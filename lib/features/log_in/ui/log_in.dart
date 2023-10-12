import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../homepage/ui/Homepage.dart';
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
      appBar: AppBar(title: const Text('Login'), backgroundColor: Colors.greenAccent[400],),
        resizeToAvoidBottomInset: false,
        body: BlocConsumer<LoginBloc, LoginState>(

      bloc: Loginbloc,
      listener: (context, state) {
        if(state is LoginFailure){
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Invalid Username or Password')));
        }

        if(state is LoginSuccess){
          Navigator.push(context,MaterialPageRoute(builder: (context)=> const Homepage()));
        }
      },
      builder: (context, state) {
        switch (state.runtimeType) {

          case LoginInitial:
            return Form(
              key: formkey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [usernamefield(), passwordfield(), loginbutton()],
                ),
              ),
            );

          case LoginLoading:
            return const Center(
              child: CircularProgressIndicator(),
            );


          default:
            return const SizedBox();
        }
      },
    ));
  }

  Widget usernamefield() {
    return TextFormField(
      controller: usernameController,
       // onChanged: (username) { Loginbloc.add(UsernameChanged(username));},
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
       // onChanged: (password) { Loginbloc.add(PasswordChangedevent(password));},
        decoration: const InputDecoration(
            icon: Icon(Icons.security), hintText: 'Password'),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Error';
            return "Password length must be Greater than 7Characters";
          }
        });
  }

  Widget loginbutton() {
    return ElevatedButton(onPressed: () { final username = usernameController.text;
    final password = passwordController.text;
    Loginbloc.add(LoginButtonPressedevent(username: username, password: password));}, child: const Text('Login'));
  }
}
