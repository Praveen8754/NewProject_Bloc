part of 'sign_in_bloc.dart';

@immutable
abstract class LoginEvent  {
  @override
  List<Object> get props => [];
}

class LogInitialEvent extends LoginEvent {}


class UsernameChangedevent extends LoginEvent {
  final String username;
  UsernameChangedevent(this.username);
}

class PasswordChangedevent extends LoginEvent {
  final String password;
  PasswordChangedevent(this.password);
}

class LoginButtonPressedevent extends LoginEvent {
  final String username;
  final String password;

  LoginButtonPressedevent({required this.username, required this.password});

  @override
  List<Object> get props => [username, password];
}


