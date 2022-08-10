import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const <String>[
    'Megaman',
    'Meta Gear',
    'Super Smash',
    'Final Fantasy'
  ];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Kind title one')),
        ),
        body: ListView(
          children: [
            ...options.map((String option) => ListTile(
                    title: Text(option),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  )
            )
          ],
        ));
  }
}
