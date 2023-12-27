// ignore_for_file: depend_on_referenced_packages, invalid_use_of_visible_for_testing_member

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  List<int>? biner;

  int currentIndex = 0;

  HomeBloc() : super(HomeState.initial()) {
    on<InitThemeEvent>(_onInitTheme);
    on<SectionIndexEvent>(_onChangeSectionEvent);
  }

  void _onInitTheme(InitThemeEvent event, Emitter<HomeState> state) {}
  void _onChangeSectionEvent(
      SectionIndexEvent event, Emitter<HomeState> state) {
    emit(HomeState.changeSection());
    emit(HomeState(sectionsSelectedIndex: event.index));
  }
}
