import 'package:MyProgect_01/feature_01/feature_01.dart';

abstract class LaunchesRepository {
  Future<List<LaunchInfoEntity>> getLaunches(Params params);
}
