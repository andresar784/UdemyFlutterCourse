import 'package:flutter/material.dart';

import '../models/themes/appthemes.dart';

class CustomCard1 extends StatelessWidget {
  const CustomCard1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            title: Text('Soy un title'),
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary, ),
            subtitle: Text('Soy el contenido'),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(onPressed: () {},
             child: const Text('Cancel'),
             ),
             TextButton(onPressed: () {},
              child: const Text('OK') 
            ),
          ],
        ),
      )
      ],
      ),
    );
  }
}