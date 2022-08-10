import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const <String>[
    'Megaman',
    'Meta Gear',
    'Super Smash',
    'Final Fantasy'
  ];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Kind title two')),
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (_, int index) => ListTile(
            title: Text(options[index]),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.indigo
              ),
            onTap: () {
              final game = options[index];
              print('Game: $game');
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
