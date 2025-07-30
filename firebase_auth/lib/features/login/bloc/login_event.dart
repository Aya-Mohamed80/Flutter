part of 'login_bloc.dart';

sealed class LoginEvent {}

class LoginButttonPressedEvent extends LoginEvent {
  final String email;
  final String password;
  LoginButttonPressedEvent(this.email, this.password);
}

class LogoutButttonPressedEvent extends LoginEvent {}
