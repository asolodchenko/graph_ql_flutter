import 'package:MyProgect_01/feature_01/feature_01.dart';

class GetLaunchesUseCase {
  final LaunchesRepository _repository;

  GetLaunchesUseCase({required repository}) : _repository = repository;

  @override
  call(Params params) => _repository.getLaunches(params);
}

class Params {
  final String textToSeach;
  final int;

  Params({required this.textToSeach, required this.int});
}
