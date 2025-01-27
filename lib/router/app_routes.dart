import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes {

  static const inialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //MenuOption(name: 'Home Screen', route: 'home', screen: HomeScreen(), iconData: Icons.house),
    MenuOption(name: 'List View Tipo 1', route: 'listview1', screen: Listview1Screen(), iconData: Icons.list),
    MenuOption(name: 'List View Tipo 2', route: 'listview2', screen: Listview2Screen(), iconData: Icons.list_alt_outlined),
    MenuOption(name: 'Alertas', route: 'alert', screen: AlertScreen(), iconData: Icons.message),
    MenuOption(name: 'Tarjetas', route: 'card', screen: CardScreen(), iconData: Icons.add_card),
    MenuOption(name: 'Avatar', route: 'avatar', screen: AvatarScreen(), iconData: Icons.supervised_user_circle_rounded),
    MenuOption(name: 'Animated', route: 'animated', screen: AnimatedScreen(), iconData: Icons.animation),
    MenuOption(name: 'Inputs', route: 'inputs', screen: InputsScreen(), iconData: Icons.input),
    MenuOption(name: 'Slider', route: 'slider', screen: SliderScreen(), iconData: Icons.slideshow),
    MenuOption(name: 'ListViewBuilder', route: 'listviewbuilder', screen: ListviewBuilderScreen(), iconData: Icons.list),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){

    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => HomeScreen()});

    for (final option in menuOptions){
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings setting){
    return MaterialPageRoute(builder: (context) => Listview1Screen());
  }
}