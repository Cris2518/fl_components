import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
   
  final options = const ['Megaman', 'X', 'Zero', 'Dr. Light', 'Dr. Wily'];

  const Listview1Screen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview1Screen'),
      ),
      body: ListView(
        children: [
          ...options.map((e) => 
          ListTile(
            title: Text(e),
            subtitle: Text('Subtitle'),
            leading: Icon(Icons.access_alarm),
            trailing: Icon(Icons.keyboard_arrow_right),
          )),
        ],
      )
    );
  }
}