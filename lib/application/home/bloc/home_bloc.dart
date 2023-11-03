// ignore_for_file: depend_on_referenced_packages

import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web_portofolio/constants/biner.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  List<int>? biner;

  int currentIndex = 0;

  HomeBloc() : super(HomeState.initial()) {
    on<InitBinerEvent>(_onInitBiner);
    on<ChangeBinerEvent>(_onChangeBiner);
  }
  Future<void> binerCreate() async {
    biner = [];
    for (var i = 0; i < 500; i++) {
      int randomNumber = Random().nextInt(2);
      biner?.add(randomNumber);
    }
  }

  void _onInitBiner(InitBinerEvent event, Emitter<HomeState> emit) async {
    // await binerCreate();

    emit(state.copyWith(hex: Hex.data[currentIndex]));
  }

  void _onChangeBiner(ChangeBinerEvent event, Emitter<HomeState> emit) async {
    // await binerCreate();
    currentIndex =
        (currentIndex + 1) % Hex.data.length; // Loop through the lists

    emit(state.copyWith(hex: Hex.data[currentIndex]));
  }
}
