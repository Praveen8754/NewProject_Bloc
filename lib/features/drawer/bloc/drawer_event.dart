part of 'drawer_bloc.dart';

@immutable
abstract class DrawerEvent {}

class OpenDrawerEvent extends DrawerEvent {}

class CloseDrawerEvent extends DrawerEvent {}
