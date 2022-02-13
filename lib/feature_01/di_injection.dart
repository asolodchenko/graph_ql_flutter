import 'package:flutter_graphQl/feature_01/feature_01.dart';
import 'package:get_it/get_it.dart';

import 'data/repositories/repositories.dart';

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
