import 'package:flutter_graphQl/feature_01/feature_01.dart';
import 'dart:developer' as dev;

import 'package:graphql_flutter/graphql_flutter.dart';

class LaunchesRepositoryImpl extends LaunchesRepository {
  final GraphQLService client;

  LaunchesRepositoryImpl({required this.client});

  @override
  Stream<List<LaunchInfoEntity>> getLaunches(Params params) async* {
    final query = GqlQueries.launchesPast;
    List<LaunchInfoEntity> launchInfoEntities = [];

    final result = await client.performQuery(query, variables: {
      'limit': params.limit,
      'search': params.search,
    });

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
