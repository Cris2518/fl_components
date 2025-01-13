import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes {

  static const inialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // TODO: BORRAR HOME
    MenuOption(name: 'Home Screen', route: 'home', screen: HomeScreen(), iconData: Icons.access_alarm),
    MenuOption(name: 'List View Tipo 1', route: 'listview1', screen: Listview1Screen(), iconData: Icons.account_circle_outlined),
    MenuOption(name: 'List View Tipo 2', route: 'listview2', screen: Listview2Screen(), iconData: Icons.add_a_photo_sharp),
    MenuOption(name: 'Alertas', route: 'alert', screen: AlertScreen(), iconData: Icons.alarm),
    MenuOption(name: 'Tarjetas', route: 'card', screen: CardScreen(), iconData: Icons.card_travel_rounded)
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){

    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions){
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //         'home' : (BuildContext context) => const HomeScreen(),
  //         'listview1' : (BuildContext context) => const Listview1Screen(),
  //         'listview2' : (BuildContext context) => const Listview2Screen(),
  //         'alert' : (BuildContext context) => const AlertScreen(),
  //         'card' : (BuildContext context) => const CardScreen(),
  //       };

  static Route<dynamic> onGenerateRoute(RouteSettings setting){
    return MaterialPageRoute(builder: (context) => Listview1Screen());
  }
}