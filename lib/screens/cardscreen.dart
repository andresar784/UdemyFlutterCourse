
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text('Card Widget'),
      ),
      body:  ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: const [
          CustomCard1(),
          SizedBox(height: 20),
          CustomCard2(description: 'Una linda imagen',  imageURL: 'https://upload.wikimedia.org/wikipedia/commons/2/2c/NZ_Landscape_from_the_van.jpg',),
          SizedBox(height: 30),
          CustomCard2(description: 'El arbol de la vida', imageURL:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_xnNFIhN3scVI6UtDHT9mvo7pSnv1H7Cz6g&usqp=CAUr'),
          SizedBox(height: 30),
          CustomCard2(imageURL: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiRo1uQR7IHPfxdltUaoJAvfegbxH9NeD8NA&usqp=CAU')
        ],
       ),
    );
  }
}

