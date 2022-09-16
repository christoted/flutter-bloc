part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {
  @override
  List<Object> get props => [];
}

class LoginButtonPressed extends LoginEvent {
  final String email;
  final String password;
  LoginButtonPressed(this.email, this.password);

  @override
  List<Object> get props => [email, password];
}

class FormChanged extends LoginEvent {
  final String email;
  final String password;
  FormChanged(this.email, this.password);

  @override
  List<Object> get props => [email, password];
}
