import 'package:flutter/material.dart';

import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: Text('Componente en Flutter')
      ),
      body: ListView.separated(
        itemBuilder: (context, iterator) => ListTile(
          leading: Icon(menuOptions[iterator].iconData, color: AppTheme.primary,),
          title: Text(menuOptions[iterator].name),
          onTap: () {
            Navigator.pushNamed(context, menuOptions[iterator].route);
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