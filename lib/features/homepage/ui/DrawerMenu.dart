// drawer_menu.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/homepage_bloc.dart';
//import 'drawer_bloc.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
 //   return BlocBuilder<HomepageBloc, HomepageState>(
  //    builder: (context, drawerState) {
        return Drawer(
          child: ListView(
            children: <Widget>[
              Container(height: 70,),
               ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  // Navigate to the home page
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Profile'),
                onTap: () {
                  // Navigate to the profile page
                  Navigator.pop(context);
                  // You can add your navigation logic here
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  // Navigate to the settings page
                  Navigator.pop(context);
                  // You can add your navigation logic here
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Logout'),
                onTap: () {
                  // Implement the logout functionality
                  Navigator.pop(context);
                  // You can add your logout logic here
                },
              ),
            ],
          ),
        );
   //   },
  //  );
  }
}
