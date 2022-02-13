import 'package:MyProgect_01/feature_01/feature_01.dart';

class GetLaunchesUseCase {
  final LaunchesRepository repository;

  GetLaunchesUseCase({required this.repository});

  call(Params params) => repository.getLaunches(params);
}

class Params {
  final String textToSeach;
  final int;

  Params({required this.textToSeach, required this.int});
}
