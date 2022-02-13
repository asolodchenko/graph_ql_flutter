import 'package:MyProgect_01/feature_01/feature_01.dart';

import 'dart:developer' as dev;

class LaunchesRepositoryImpl extends LaunchesRepository {
  final GraphQLService client;

  LaunchesRepositoryImpl({required this.client});

  @override
  Stream<List<LaunchInfoEntity>> getLaunches(Params params) async* {
    final query = GqlQueries.launchesPast;
    final launchInfoEntities = <LaunchInfoEntity>[];

    final result = await client.performQuery(query, variables: {});

    if (result.hasException) {
      dev.log(result.exception!.graphqlErrors.first.toString());
    }

    for (final launch in result.data!['launches']) {
      dev.log(launch['mission_name'].toString());

      launchInfoEntities.add(LaunchInfoEntity(
        title: launch['mission_name'] ?? 'no data',
        info: launch['details'] ?? 'no data',
      ));
    }

    yield launchInfoEntities;
  }
}

abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(String message) : super(message);
}
