import 'package:flutter_graphQl/feature_01/feature_01.dart';

class GetLaunchesUseCase {
  final LaunchesRepository repository;

  GetLaunchesUseCase({required this.repository});

  call(Params params) => repository.getLaunches(params);
}

class Params {
  final int limit;
  final String search;
  Params({required this.limit, required this.search});
}
