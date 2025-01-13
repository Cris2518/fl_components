import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
   
  final options = const ['Megaman', 'X', 'Zero', 'Dr. Light', 'Dr. Wily'];

  const Listview2Screen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview2Screen'),
        elevation: 0,
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemCount: options.length,
        separatorBuilder: (_, index) => Divider(),
        itemBuilder: (context, index) => ListTile(
            title: Text(options[index]),
            leading: Icon(Icons.accessibility_new, color: Colors.indigo,),
            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.indigo,),
            onTap: () {
              print(options[index]);
            },
          ),
      )
    );
  }
}