
import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {

   final options = const ['Final Fantasy', 'Smash', 'Megaman', 'Roblox'];

  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View Tipo 1'),
      ),
      body: ListView(
        children:  [
          ...options.map(
            (game) => ListTile(
            title: Text(game)
          ))
        ],
      )
            );
  }
}