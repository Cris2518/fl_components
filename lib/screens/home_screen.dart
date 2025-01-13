import 'package:fl_components/router/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: Text('Componente en Flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(menuOptions[index].iconData),
          title: Text(menuOptions[index].name),
          onTap: () {
            final route = MaterialPageRoute(
              builder: (context) => menuOptions[index].screen
            );

            Navigator.push(context, route);
          },
        ),
        separatorBuilder: (context, index) => Divider(), 
        itemCount: menuOptions.length
        )
    );
  }
}

//          (context, index) => ListTile(
//           leading: Icon(Icons.ac_unit_rounded),
//           title: Text('Nombre de la ruta'),
//           onTap: (){

//             // final route = MaterialPageRoute(
//             //   builder: (context) => Listview1Screen()
//             // );
//             // Navigator.pushReplacement(context, route);

//             //Navigator.pushNamed(context, 'car2');

//           },
//         ), 