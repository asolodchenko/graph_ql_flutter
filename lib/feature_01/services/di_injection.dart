import 'package:MyProgect_01/feature_01/data/repositories/repository_impl.dart';
import 'package:MyProgect_01/feature_01/feature_01.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

init() {
  sl.registerFactory<HomeBloc>(() => HomeBloc(
        getLaunchesUseCase: sl(),
      ));

  sl.registerLazySingleton<GetLaunchesUseCase>(() => GetLaunchesUseCase(
        repository: sl(),
      ));

  sl.registerLazySingleton<LaunchesRepository>(() => LaunchesRepositoryImpl(
        client: sl(),
      ));

  sl.registerLazySingleton<GraphQLService>(() => GraphQLService());
}
