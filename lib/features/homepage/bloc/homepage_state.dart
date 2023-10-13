part of 'homepage_bloc.dart';

@immutable
abstract class HomepageState {}


class DrawerState extends HomepageState {
  final bool isDrawerOpen;

  DrawerState({required this.isDrawerOpen});
}

class HomepageInitial extends HomepageState {
  HomepageInitial(DrawerState drawerState);
}

/*
class DrawerClosed extends HomepageState{}

class DrawerOpened extends HomepageState{}*/
