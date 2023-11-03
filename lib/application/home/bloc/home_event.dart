part of 'home_bloc.dart';


@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.initBiner() = InitBinerEvent;
  const factory HomeEvent.changeBiner() = ChangeBinerEvent;
}