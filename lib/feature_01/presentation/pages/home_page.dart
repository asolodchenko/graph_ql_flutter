import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:MyProgect_01/feature_01/feature_01.dart';
import 'dart:developer' as dev;

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(
        getLaunchesUseCase: sl<GetLaunchesUseCase>(),
      )..add(HomeEvent.fetchData()),
      child: Scaffold(
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return state.map(
                initial: (_) => const SizedBox.shrink(),
                loading: (_) =>
                    const Center(child: CircularProgressIndicator()),
                error: (error) =>
                    Center(child: Text(error.errorMessage.toString())),
                loadedData: (data) {
                  return ListView.builder(
                    itemCount: data.launches.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(data.launches[index].title.toString()),
                        subtitle: Text(data.launches[index].info.toString()),
                      );
                    },
                  );
                });
          },
        ),
      ),
    );
    // return Scaffold(
    //   body: Center(
    //     child: Query(
    //       options: QueryOptions(document: gql(GqlQueries.launchesPast)),
    //       builder: (QueryResult result, {fetchMore, refetch}) {
    //         if (result.hasException) {
    //           return Text(
    //             result.exception.toString(),
    //             style: TextStyle(color: Colors.red),
    //           );
    //         }

    //         if (result.isLoading) {
    //           return Center(child: CircularProgressIndicator());
    //         }

    //         final resultList = result.data!['launches'] as List;

    //         return ListView.builder(
    //           itemCount: resultList.length,
    //           itemBuilder: (context, index) {
    //             return Padding(
    //               padding: const EdgeInsets.all(16.0),
    //               child: Column(
    //                 children: [
    //                   Text(
    //                     resultList[index]['mission_name'] ?? 'no data',
    //                     style: TextStyle(fontWeight: FontWeight.bold),
    //                   ),
    //                   const SizedBox(height: 8),
    //                   Text(resultList[index]['details'] ?? 'no data'),
    //                 ],
    //               ),
    //             );
    //           },
    //         );
    //       },
    //     ),
    //   ),
    // );
  }
}
