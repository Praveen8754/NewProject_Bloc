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
  HomepageBloc() : super(HomepageInitial()) {
    on<homepageinitialevent>(Homepageinitialevent);
    on<drawerclickedevent> (Drawerclickedevent);

  }

  FutureOr<void> Homepageinitialevent(
      homepageinitialevent event, Emitter<HomepageState> emit) async {
    emit(HomepageInitial());
  }

  FutureOr<void> Drawerclickedevent(
      drawerclickedevent event, Emitter<HomepageState> emit) async {
    emit(Drawerclickedstate());
  }

}
