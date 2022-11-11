import 'package:aprendiendo_1/models/models.dart';
import 'package:aprendiendo_1/screens/screens.dart';
import 'package:flutter/material.dart';

/*
 Esta clase es para enlazar las rutas, ensucia mucho el main asi 
 que es preferible que este aqui
 */
class AppRoute {
  static const initialRoute = "home";

  static final menuOption = <MenuOption>[
    MenuOption(
        route: "home",
        icon: Icons.home,
        nombre: "Home Screen",
        screen: const HomeScreen()),
    MenuOption(
        route: "listview1",
        icon: Icons.list,
        nombre: "List view tipo 1",
        screen: const ListView1Screen()),
    MenuOption(
        route: "listview2",
        icon: Icons.list_alt_outlined,
        nombre: "List view tipo 2",
        screen: const ListView2Screen()),
    MenuOption(
        route: "alert",
        icon: Icons.add_alert,
        nombre: "Alertas",
        screen: const AlertScreen()),
    MenuOption(
        route: "cart",
        icon: Icons.credit_card,
        nombre: "Tarjetas",
        screen: const CardScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOption) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  //static Map<String, Widget Function(BuildContext)> routes = {
  //  "home": (context) => const HomeScreen(),
  //  "listview1": (context) => const ListView1Screen(),
  //  "listview2": (context) => const ListView2Screen(),
  //  "alert": (context) => const AlertScreen(),
  // "card": (context) => const CardScreen()
  //};
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
