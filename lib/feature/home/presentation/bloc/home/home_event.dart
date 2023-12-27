part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.initTheme() = InitThemeEvent;
  const factory HomeEvent.changeSection(int? index) = SectionIndexEvent;
}
