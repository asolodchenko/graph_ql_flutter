import 'package:MyProgect_01/feature_01/feature_01.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Query(
          options: QueryOptions(document: gql(GqlQueries.launchesPast)),
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

            return ListView.builder(
              itemCount: resultList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        resultList[index]['mission_name'] ?? 'no data',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
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
