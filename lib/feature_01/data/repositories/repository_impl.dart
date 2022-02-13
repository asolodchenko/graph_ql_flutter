import 'package:MyProgect_01/feature_01/feature_01.dart';

import 'dart:developer' as dev;

class LaunchesRepositoryImpl extends LaunchesRepository {
  final GraphQLService client;

  LaunchesRepositoryImpl({required this.client});

  @override
  Future<List<LaunchInfoEntity>> getLaunches(Params params) async {
    final query = GqlQueries.launchesPast;
    final launchInfoEntities = <LaunchInfoEntity>[];

    final result = await client.performQuery(query, variables: {});

    if (result.hasException) {
      dev.log(result.exception!.graphqlErrors.first.toString());
    }

    for (final launch in result.data!['launches']) {
      dev.log(launch['mission_name'].toString());
      dev.log(launch['details'].toString());

      launchInfoEntities.add(LaunchInfoEntity(
        title: launch['mission_name'],
        info: launch['details'],
      ));
    }

    // return result.data!['launches'];

    return launchInfoEntities;
  }
}
