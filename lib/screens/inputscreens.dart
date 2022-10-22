import 'package:flutter/material.dart';

import '../widgets/widgets.dart';



class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs'),
      ),
      //funciona como un listview pero muestra un solo elemento
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            children: const [
              CustomInputField()
            ],
          ),
        ),
      ),
    );
  }
}

