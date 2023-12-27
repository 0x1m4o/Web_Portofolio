part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({ThemeData? theme, int? sectionsSelectedIndex}) =
      _HomeState;

  factory HomeState.initial() => const HomeState(
        sectionsSelectedIndex: 0,
      );

  factory HomeState.changeSection() => const HomeState();
}
