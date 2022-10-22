import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  //contenido para IOS
  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Titulo de IOS'),
            content: Column(mainAxisSize: MainAxisSize.min, children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: FlutterLogo(size: 60),
              )
            ]),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                }, 
                child: const Text("Cancelar") )
            ],
          );
        });
  }
  
  void displayDialogMaterial(BuildContext context) {
    showDialog(
        //barrierDismissible permite cerra el dialog en la sombra
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10) )  ,
            elevation: 5,
            title: const Text('Dialogo'),
            content: Column(mainAxisSize: MainAxisSize.min, children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: FlutterLogo(size: 60),
              )
            ]),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                }, 
                child: const Text("Cancelar") )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(
          child: const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text('Mostrar Alerta', style: TextStyle(fontSize: 15),),
          ), 
          //Platform para selecccionar cual plataforma se esta usando
          onPressed: () => Platform.isAndroid ? displayDialogMaterial( context)
          : displayDialogIOS( context),
          // onPressed: () => displayDialogMaterial( context),
          // onPressed: () => displayDialogIOS( context),
           ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        child: const Icon(Icons.close),
        onPressed: () {
         Navigator.pop(context);
      },),
    );
  }
}