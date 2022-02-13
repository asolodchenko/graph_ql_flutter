import 'package:MyProgect_01/feature_01/feature_01.dart';

import 'dart:developer' as dev;

class LaunchesRepositoryImpl extends LaunchesRepository {
  final GraphQLService client;

  LaunchesRepositoryImpl({required this.client});

  @override
  Stream<List<LaunchInfoEntity>> getLaunches(Params params) async* {
    final query = GqlQueries.launchesPast;
    List<LaunchInfoEntity> launchInfoEntities = [];

    final result = await client.performQuery(query, variables: {});

    if (result.hasException) {
      dev.log(result.exception!.graphqlErrors.first.toString());
    }

    if (result.data!.isNotEmpty) {
      for (final launch in result.data!['launches']) {
        launchInfoEntities.add(LaunchInfoEntity(
          title: launch['mission_name'] ?? '',
          info: launch['details'] ?? '',
        ));
      }

      yield launchInfoEntities;
    } else {
      throw ServerFailure('Datasourse is unavailable');
    }
  }
}

abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(String message) : super(message);
}
