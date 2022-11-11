import 'package:aprendiendo_1/router/app_routes.dart';
import 'package:aprendiendo_1/screens/screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  //siempre es buena practica colocar el key
  //nos permite controlar el widget
  const MyApp({super.key});

  // si algo no cambia desde la compilacion, es mejor dejarlo con const
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: const ListView2Screen(),
      initialRoute: AppRoute.initialRoute,
      routes: AppRoute.getAppRoutes(),
      onGenerateRoute: AppRoute.onGenerateRoute,
    );
  }
}
