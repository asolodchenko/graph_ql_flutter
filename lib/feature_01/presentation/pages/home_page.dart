import 'package:MyProgect_01/feature_01/feature_01.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'dart:developer' as dev;

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Query(
          options: QueryOptions(document: gql(GqlRequests.launchesPast)),
          builder: (QueryResult result, {fetchMore, refetch}) {
            if (result.hasException) {
              return Text(
                result.exception.toString(),
                style: TextStyle(color: Colors.red),
              );
            }

            if (result.isLoading) {
              return Center(child: CircularProgressIndicator());
            }

            final resultList = result.data!['launches'] as List;
            dev.log(resultList.toString());
            return ListView.builder(
              itemCount: resultList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(resultList[index]['mission_name'] ?? 'no data'),
                      Text(resultList[index]['details'] ?? 'no data'),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
