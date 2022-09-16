part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  String email; 
  String password; 

  LoginState({required this.email, required this.password});
      
  @override 
  List<Object> get props => [email, password];
}

class LoginInitialState extends LoginState {
  LoginInitialState() : super(email: "", password: "");
}

class LoginLoadingState extends LoginState {
  LoginLoadingState() : super(email: "", password: "");
}

class LoginSuccessState extends LoginState {
  Login login;
  LoginSuccessState(this.login) : super(email: "", password: "");

  @override 
  List<Object> get props => [login];
}

class LoginFailedState extends LoginState {
  final String errorMessage;
   LoginFailedState(this.errorMessage) : super(email: "", password: "");

  @override
  List<Object> get props => [errorMessage];
}

// Form 
class UpdateFormState extends LoginState {
  @override
  String email; 
  @override
  String password;
  UpdateFormState(this.email, this.password) : super(email: email, password: password);
}

