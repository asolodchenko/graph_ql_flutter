import 'package:MyProgect_01/app.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

// // ignore: import_of_legacy_library_into_null_safe
// import 'package:graphql_flutter/graphql_flutter.dart';
// import 'dart:developer' as dev;

// class GraphQLService {
//   GraphQLClient? _client;

//   GraphQLService() {
//     HttpLink link = HttpLink(uri: 'https://api.spacex.land/graphql/');

//     _client = GraphQLClient(
//       link: link,
//       cache: InMemoryCache(),
//     );
//   }

//   Future<QueryResult> performQuery(
//     String query, {
//     required Map<String, dynamic> variables,
//   }) async {
//     QueryOptions options = QueryOptions(document: query, variables: variables);

//     final result = await _client!.query(options);

//     return result;
//   }

//   Future<QueryResult> performMutation(
//     String query, {
//     required Map<String, dynamic> variables,
//   }) async {
//     MutationOptions options = MutationOptions(
//       document: query,
//       variables: variables,
//     );

//     final result = await _client!.mutate(options);
//     dev.log(result.toString());

//     return result;
//   }
// }

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
