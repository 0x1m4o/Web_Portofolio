part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getMediumData(List<MediumEntity> allMediumData) =
      GetMediumData;
}
