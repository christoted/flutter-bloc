import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:grow_now_clone/repository/global_repository.dart';
import 'package:grow_now_clone/repository/login_repository.dart';
import 'package:grow_now_clone/repository/models/login.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {

  final LoginRepository _loginRepository = LoginRepository();
  final GlobalRepository _globalRepository = GlobalRepository();

  LoginBloc() : super(LoginInitialState()) {
    on<LoginEvent>((event, emit) async {
        if (event is LoginButtonPressed) {
           try {
              final data = {
                'email' : event.email,
                'password' : event.password,
                'type' : 'Influencer',
                'platform' : 'Sevenads'
              };
            final response = await  _loginRepository.requestSignInEmail(data);
            final result = jsonDecode(response.body);
            final loginData = Login.fromJson(result['data']);
           
            if (loginData.type != null) {
                final token = result['token'];
                emit (LoginSuccessState(loginData));
                _globalRepository.setUserToken(token);
                print(token);
            }
         
           } catch (err) {
              print(err);
           }
        } else if (event is FormChanged) {
          print("email: " + event.email + " password: " + event.password);
          emit (UpdateFormState(event.email, event.password));
        }
    });
  }
}
