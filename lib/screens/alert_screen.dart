import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({super.key});
  
  void displayDialogAndroid(BuildContext context){

    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {

        return AlertDialog(
          elevation: 5,
          title: Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 20),
              FlutterLogo(size: 100)
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancelar')
              ),
              TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK')
              )
          ],
        );
      },
    );
  }

  void displayDialogIOS(BuildContext context){
    showCupertinoDialog(
      context: context, 
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 20),
              FlutterLogo(size: 100)
            ],
          ),
          actions: [
            CupertinoDialogAction(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancelar')
            ),
            CupertinoDialogAction(
              onPressed: () => Navigator.pop(context),
              child: Text('Confirmar')
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(
          //onPressed: () => displayDialogAndroid(context),
          onPressed: () => Platform.isAndroid ? displayDialogAndroid(context) : displayDialogIOS(context),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Alert', style: TextStyle(fontSize: 16)),
          ), 
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}