import 'package:MyProgect_01/app.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'feature_01/data/repositories/repository_impl.dart';
import 'feature_01/feature_01.dart';

void main() {
  // GraphQLProvider app = appGraphQLProvider();
  // runApp(app);

  LaunchesRepositoryImpl(client: GraphQLService()).getLaunches(
    Params(int: 10, textToSeach: ''),
  );
  runApp(MyApp());
}
