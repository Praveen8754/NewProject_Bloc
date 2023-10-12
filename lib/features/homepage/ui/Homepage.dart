import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/homepage_bloc.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomepageBloc homepageBloc = HomepageBloc();


    return Scaffold(
      appBar: AppBar(title: const Text('Home Page'), backgroundColor: Colors.greenAccent[400],),
      resizeToAvoidBottomInset: false,
    body: BlocConsumer< HomepageBloc, HomepageState>(
      bloc:homepageBloc,
      listener: (context, state) {},
      builder: (context, state) {
        switch (state.runtimeType) {

          case HomepageInitial:
appBar: AppBar()

          default:
           return const SizedBox();
        }

      }
    )
    );
  }
}
