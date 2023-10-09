/*part of 'sign_in_bloc.dart';

@immutable
abstract class SignInState {}

class SignInInitial extends SignInState {}*/
/*
import '../../form_submission_status.dart';

class Signinstate {
  final String username;
  final String password;
  final FormSubmissionStatus formSubmissionStatus;


  Signinstate({
    this.username='',
    this.password='',
    this.formSubmissionStatus=const InitialFormStatus(),
});


  Signinstate copyWith({
    String? username,
    String? password,
    FormSubmissionStatus formSubmissionStatus
})    {
    return Signinstate(
      username: username ?? this.username,
      password: password?? this.password,
      formSubmissionStatus:formSubmissionStatus?? this.
    );
  }

}*/
abstract class LoginState  {
/*  @override
  List<Object> get props => [];*/
}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {}

class LoginFailure extends LoginState {
  final String error;
  LoginFailure({required this.error});

 /* @override
  List<Object> get props => [error];*/
}


