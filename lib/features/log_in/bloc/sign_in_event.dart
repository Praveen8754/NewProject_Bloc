part of 'sign_in_bloc.dart';

@immutable
abstract class LoginEvent  {
  @override
  List<Object> get props => [];
}

class LogInitialEvent extends LoginEvent {}


class UsernameChanged extends LoginEvent {
  final String username;
  UsernameChanged(this.username);
}

class PasswordChanged extends LoginEvent {
  final String password;
  PasswordChanged(this.password);
}

class LoginButtonPressed extends LoginEvent {
  final String username;
  final String password;

  LoginButtonPressed({required this.username, required this.password});

  @override
  List<Object> get props => [username, password];
}


