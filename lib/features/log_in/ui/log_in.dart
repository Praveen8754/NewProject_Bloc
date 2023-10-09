import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/sign_in_bloc.dart';
import '../bloc/sign_in_state.dart';

class LoginView extends StatelessWidget {
  final formkey = GlobalKey<FormState>();
  final LoginBloc Loginbloc = LoginBloc();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocConsumer<LoginBloc, LoginState>(
      bloc: Loginbloc,
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        switch (state.runtimeType) {
          case LoginLoading:
            return const Center(
              child: CircularProgressIndicator(),
            );

          case LoginSuccess:
            return Form(
              key: formkey,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [usernamefield(), passwordfield(), loginbutton()],
                ),
              ),
            );
        }
      },
    ));
  }

  Widget usernamefield() {
    return TextFormField(
      controller: usernameController,
        onChanged: (email) {
          Loginbloc.add(EmailChanged(email));},
      decoration:
          const InputDecoration(icon: Icon(Icons.person), hintText: 'Username'),
      validator: (value) {
        return null;
      },
    );
  }

  Widget passwordfield() {
    return TextFormField(
        controller: passwordController,
        obscureText: true,
        onChanged: (password) {
          Loginbloc.add(PasswordChanged(password));},
        decoration: const InputDecoration(
            icon: Icon(Icons.security), hintText: 'Password'),
        validator: (value) {
          if (value!.length < 8) {
            return "Password length must be Greater than 7Characters";
          }
        });
  }

  Widget loginbutton() {
    return ElevatedButton(onPressed: () { final username = usernameController.text;
    final password = passwordController.text;
    Loginbloc.add(LoginButtonPressed(username: username, password: password));}, child: const Text('Login'));
  }
}
