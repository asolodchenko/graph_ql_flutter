import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_graphQl/feature_01/feature_01.dart';

class EmptyDataWidget extends StatelessWidget {
  const EmptyDataWidget({
    Key? key,
    required TextEditingController textController,
    required String text,
  })  : _textController = textController,
        _text = text,
        super(key: key);

  final TextEditingController _textController;
  final String _text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Center(child: Text('There is no items found...')),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            _textController.text = '';
            context
                .read<HomeBloc>()
                .add(HomeEvent.fetchData(searchText: _text));
          },
          child: Text('Load Random Launches'),
        ),
      ],
    );
  }
}
