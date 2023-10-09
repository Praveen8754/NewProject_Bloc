part of 'startscreen_bloc.dart';

@immutable
abstract class DrawerEvent {}

class OpenDrawerEvent extends DrawerEvent {}

class CloseDrawerEvent extends DrawerEvent {}
