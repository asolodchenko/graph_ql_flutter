import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_graphQl/feature_01/feature_01.dart';

class SearchField extends StatelessWidget {
  const SearchField({
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
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 16, top: 16),
            child: TextField(
              onSubmitted: (value) {
                context
                    .read<HomeBloc>()
                    .add(HomeEvent.fetchData(searchText: value));
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a search item',
              ),
              controller: _textController,
            ),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () => context
              .read<HomeBloc>()
              .add(HomeEvent.fetchData(searchText: _text)),
        )
      ],
    );
  }
}
