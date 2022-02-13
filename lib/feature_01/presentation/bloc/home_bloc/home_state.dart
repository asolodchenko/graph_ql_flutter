part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _HomeStateInitial;

  const factory HomeState.loading() = _HomeStateLoading;

  const factory HomeState.error({required String errorMessage}) =
      _HomeStateError;

  const factory HomeState.loadedData(
      {required List<LaunchInfoEntity> launches}) = _HomeStateLoadedData;
}
