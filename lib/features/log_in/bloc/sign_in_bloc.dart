import 'dart:async';
import 'dart:convert';
//import 'dart:html';
//import 'dart:js';
import 'package:bloc/bloc.dart';
import 'package:blocc/features/log_in/bloc/sign_in_state.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

import '../reposi/login_repo.dart';
part 'sign_in_event.dart';
//part 'sign_in_state.dart';

/*
class SignInBloc extends Bloc<SignInEvent, LoginState> {
  final AuthRepository? authRepository;

  // SignInBloc() : super(SignInInitial()) {
  SignInBloc({this.authRepository}) : super(LoginState());

  @override
  Stream<LoginState> mapEventToState(SignInEvent event) async* {
    if (event is SigninUsernameChanged) {
      yield state.copyWith(username: event.username);
    } else if (event is SigninPasswordChanged) {
      yield state.copyWith(password: event.Password);
    } else if (event is SigninSubmitted) {
      yield state.copyWith(formSubmissionStatus: FormSubmitting());
      try {
        await authRepository?.signin();
        yield state.copyWith(formSubmissionStatus: SubmissionSuccess());
      } catch (e) {
        yield state.copyWith(
            formSubmissionStatus: SubmissionFailed(e as Exception));
      }
    }
  }
*/
/*
  void _emailEvent (EmailEvent event,Emitter<SignInState> emit){
    print("my email is ${event.email}");
    emit(state.copyWith(email:event.email));
  }

  void _passwordEvent(PasswordEvent event,Emitter<SignInState> emit){
    print("my password is ${event.password}");
    emit(state.copyWith(password:event.password));
  }*/ /*

}
*/
class LoginBloc extends Bloc<LoginEvent, LoginState> {


  LoginBloc() : super(LoginInitial()) {

  on<LogInitialEvent>(logininitialevent);
 //on<UsernameChanged> (usernamechanged);
 //on<PasswordChangedevent> (passwordev);
 on<LoginButtonPressedevent> (loginbutton);
}

  FutureOr<void> logininitialevent(
      LogInitialEvent event, Emitter<LoginState> emit) async {
    emit(LoginLoading());
    emit(LoginInitial());
  }

  FutureOr<void> loginbutton(
      LoginButtonPressedevent event, Emitter<LoginState> emit) async {
    emit(LoginLoading());
    try {
      if (await  Loginrepo. validateuserandpassword(event.username,event.password) ) {
        emit (LoginSuccess());
      } else {
        emit (LoginFailure(error: 'Invalid username or password'));
      }
    } catch (error) {
      emit (LoginFailure(error: 'Authentication failed'));
    }
  }
  }




 // @override
  /*Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if(event is LoginInitial){

    }else if (event is EmailChanged) {
      // Handle email change event
    } else if (event is PasswordChanged) {
      // Handle password change event
    } else if (event is LoginButtonPressed) {
      yield LoginLoading();
      try {
        if (await performAuthentication(event.username, event.password)) {
          yield LoginSuccess();
        } else {
          yield LoginFailure(error: 'Invalid username or password');
        }
      } catch (error) {
        yield LoginFailure(error: 'Authentication failed');
      }
    }
  }*/





