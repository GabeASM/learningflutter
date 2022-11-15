import 'package:aprendiendo_1/models/models.dart';
import 'package:aprendiendo_1/screens/formulario_notas_screen.dart';
import 'package:aprendiendo_1/screens/notas_screen.dart';
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
        route: "notas",
        icon: Icons.note_alt,
        nombre: "PROYECTO DE APLICACION",
        screen: const NotasScreen()),
    MenuOption(
        route: "listview2",
        icon: Icons.note_alt,
        nombre: "TALLER DE REDES",
        screen: const NotasScreen()),
    MenuOption(
        route: "alert",
        icon: Icons.note_alt,
        nombre: "UXD",
        screen: const NotasScreen()),
    MenuOption(
        route: "cart",
        icon: Icons.note_alt,
        nombre: "COMPRENSION DEL CONTEXTO SOCIAL",
        screen: const NotasScreen()),
    MenuOption(
        route: "form",
        icon: Icons.note_alt,
        nombre: "FORMULARIO",
        screen: const FormNotasScreen()),
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
