// ignore_for_file: depend_on_referenced_packages, invalid_use_of_visible_for_testing_member

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web_portofolio/feature/home/domain/entities/medium_entity.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState.initial()) {
    on<GetMediumData>(_onGetMediumData);
  }

  void _onGetMediumData(GetMediumData event, Emitter<HomeState> state) {
    emit(const HomeState.loading());
    emit(HomeState.success(event.allMediumData));
  }
}
