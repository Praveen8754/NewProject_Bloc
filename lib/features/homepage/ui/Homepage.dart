import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/homepage_bloc.dart';
import 'DrawerMenu.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomepageBloc homepageBloc = HomepageBloc();


    return   BlocConsumer<HomepageBloc, HomepageState>(
        bloc: homepageBloc,
      listener: (context, state){},

    builder: (context, state){
      return Scaffold(
          appBar: AppBar(title: const Text('Home Page'),backgroundColor:Colors.greenAccent[400],



          ),
          resizeToAvoidBottomInset: false,
          drawer: DrawerMenu(),

      );

  /*        body: BlocConsumer<HomepageBloc, HomepageState>(
              bloc: homepageBloc,
              listener: (context, state) {},
              builder: (context, state) {
                switch (state.runtimeType) {
                  case HomepageInitial:
                  *//* return BlocBuilder<HomepageBloc, HomepageState>(
                      builder: (context, state) {*//*
                    switch (state.runtimeType) {
                      case DrawerClosed:
                        return  SizedBox();   *//* Drawer(
                        child: ListView(
                          padding: EdgeInsets.zero,
                          children: const <Widget>[
                            DrawerHeader(
                              child: Text('Drawer Menu'),
                            ),

                          ],
                        ),
                      );*//*


                    *//* case DrawerClosed:
                              return  null*//*

                      default:
                        return const SizedBox();
                    }
                  default:
                    return const SizedBox();
                }
              }
          )*/
      //);
    }

    );
              }
            }

