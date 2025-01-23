import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AvatarScreen'),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/57899051?v=4'),
              backgroundColor: Colors.white,
            ),
          )
        ],
      ),
      body: Center(
        child: CircleAvatar(
          backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/57899051?v=4'),
          maxRadius: 100
        ),
      ),
    );
  }
}