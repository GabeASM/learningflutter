
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
      initialRoute: 'home',
      routes: {
        "home" :(context) => const HomeScreen(),
        "listview1": (context) => const ListView1Screen(),
        "listview2": (context) => const ListView2Screen(),
        "alert": (context) => const AlertScreen(),
        "card": (context) => const CardScreen()
      },
    );
  }
}