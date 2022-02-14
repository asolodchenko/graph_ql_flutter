import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_graphQl/feature_01/feature_01.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _textController = TextEditingController();
  String get _text => _textController.text;

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(
        getLaunchesUseCase: sl<GetLaunchesUseCase>(),
      )..add(HomeEvent.fetchData(searchText: _text)),
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
                    return EmptyDataWidget(
                        textController: _textController, text: _text);
                  }
                  return Column(
                    children: [
                      SearchField(textController: _textController, text: _text),
                      Expanded(
                        child: ListView.builder(
                          itemCount: data.launches.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title:
                                  Text(data.launches[index].title.toString()),
                              subtitle:
                                  Text(data.launches[index].info.toString()),
                            );
                          },
                        ),
                      ),
                    ],
                  );
                });
          },
        ),
      ),
    );
  }
}
