import 'package:flutter/material.dart';

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
            children: [
              TextFormField(
                autofocus: false,
                initialValue: '',
                textCapitalization: TextCapitalization.words,
                onChanged: (value) {},
                validator: (value) {
                  if (value == null) return 'este campo es requerido';
                  return value.length < 3 ? 'Minimo de 3 letras' : null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  hintText: 'Nombre del Usuario',
                  labelText: 'Nombre',
                  helperText: 'Solo letras', 
                  counterText: 'Minimo de 3 letras',
                  //prefixIcon: Icon(Icons.verified_user_sharp),
                  suffixIcon: Icon(Icons.group_add_outlined),
                  icon: Icon(Icons.assignment_ind_sharp ), 
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      topRight: Radius.circular(10)
                    )
                  ) 
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
