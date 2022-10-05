
import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {

   final options = const ['Final Fantasy', 'Smash', 'Megaman', 'Roblox'];

  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List View Tipo 2'),
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile (
            title: Text(options[index],),
            trailing: const Icon(Icons.abc, color: Colors.indigo,),
            onTap: () {
             
  },),
          separatorBuilder: (context, index) => const Divider(),
        ));
  }
}
