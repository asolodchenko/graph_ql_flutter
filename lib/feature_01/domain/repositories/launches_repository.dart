import 'package:flutter_graphQl/feature_01/feature_01.dart';

abstract class LaunchesRepository {
  Stream<List<LaunchInfoEntity>> getLaunches(Params params);
}
