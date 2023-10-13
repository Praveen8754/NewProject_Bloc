import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:blocc/features/homepage/bloc/homepage_bloc.dart';
import 'package:meta/meta.dart';

import 'homepage_bloc.dart';
import 'homepage_bloc.dart';
import 'homepage_bloc.dart';

part 'homepage_event.dart';
part 'homepage_state.dart';

class HomepageBloc extends Bloc<HomepageEvent, HomepageState> {
  HomepageBloc() : super(HomepageInitial(DrawerState(isDrawerOpen: true))) {
    on<homepageinitialevent>(Homepageinitialevent);
    on<OpenDrawer> (opendrawerclickedevent);
   on<CloseDrawer> (closedrawerclickedevent);
  }

  FutureOr<void> Homepageinitialevent(
      homepageinitialevent event, Emitter<HomepageState> emit) async {
    emit(HomepageInitial(DrawerState(isDrawerOpen: true)));
  }

  FutureOr<void> opendrawerclickedevent(
      OpenDrawer event, Emitter<HomepageState> emit) async {
    emit(DrawerState(isDrawerOpen: true));
  }


 FutureOr<void> closedrawerclickedevent(
      CloseDrawer event, Emitter<HomepageState> emit) async {
    emit(DrawerState(isDrawerOpen: false));
  }



}
