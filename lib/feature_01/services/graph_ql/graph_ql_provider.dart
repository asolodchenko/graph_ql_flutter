import 'package:MyProgect_01/app.dart';
import 'package:MyProgect_01/feature_01/feature_01.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQLService {
  GraphQLClient? _client;

  GraphQLService() {
    final HttpLink httpLink = HttpLink('https://api.spacex.land/graphql/');

    _client = GraphQLClient(
      link: httpLink,
      cache: GraphQLCache(
        store: InMemoryStore(),
      ),
    );
  }

  Future<QueryResult> performQuery(
    String query, {
    required Map<String, dynamic> variables,
  }) async {
    QueryOptions options = QueryOptions(
      document: gql(GqlQueries.launchesPast),
      variables: variables,
    );

    final result = await _client!.query(options);

    return result;
  }
}

GraphQLProvider appGraphQLProvider() {
  final HttpLink httpLink = HttpLink('https://api.spacex.land/graphql/');

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: httpLink,
      cache: GraphQLCache(
        store: InMemoryStore(),
      ),
    ),
  );

  var app = GraphQLProvider(client: client, child: MyApp());
  return app;
}
