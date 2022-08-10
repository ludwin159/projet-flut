import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {

  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(
              right: 5
            ),
            child: CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: const Text('SL'),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 100,
          backgroundImage: NetworkImage('https://www.androidsis.com/wp-content/uploads/2021/12/juegos-minion.jpg'),
        ),
      ),
    );
  }
}