part of 'homepage_bloc.dart';

@immutable
abstract class HomepageEvent {}

class homepageinitialevent extends HomepageEvent {}
class drawerclickedevent extends HomepageEvent {}