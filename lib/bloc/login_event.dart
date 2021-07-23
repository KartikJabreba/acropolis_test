part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
  @override
  List<Object> get props => [];
}

class LoginInWithEmail extends LoginEvent {
  final String email;
  final String password;

  LoginInWithEmail(
      {required this.email, required this.password});

  @override
  List<Object> get props => [email, password];
}

class LogOutEvent extends LoginEvent{}