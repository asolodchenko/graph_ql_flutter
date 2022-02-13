import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_graphQl/feature_01/feature_01.dart';

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
                  if (data.launches.isEmpty) {
                    return Center(child: Text('There is no items...'));
                  }
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
  }
}
