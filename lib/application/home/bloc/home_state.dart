part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required String hex,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(hex: '');
}
