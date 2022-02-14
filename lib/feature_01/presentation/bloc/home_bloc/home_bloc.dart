import 'package:bloc/bloc.dart';
import 'package:flutter_graphQl/feature_01/feature_01.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetLaunchesUseCase getLaunchesUseCase;

  HomeBloc({required this.getLaunchesUseCase}) : super(HomeState.initial()) {
    on<HomeEvent>(_getLaunchesData);
  }

  Future<void> _getLaunchesData(
      HomeEvent event, Emitter<HomeState> emit) async {
    if (event is _FetchData) {
      emit(HomeState.loading());
    }

    try {
      final launchStream = getLaunchesUseCase.call(Params(
        limit: 10,
        search: event.searchText,
      ));

      await emit.forEach(
        launchStream,
        onData: (List<LaunchInfoEntity> data) {
          return HomeState.loadedData(launches: data);
        },
        onError: (error, stackTrace) =>
            HomeState.error(errorMessage: error.toString()),
      );
    } on Failure catch (error) {
      emit(HomeState.error(errorMessage: error.message));
    }
  }
}
