import 'package:aprendiendo_1/screens/listview1_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  //siempre es buena practica colocar el key
  //nos permite controlar el widget
  const MyApp({super.key});

  // si algo no cambia desde la compilacion, es mejor dejarlo con const
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: ListView1Screen()
    );
  }
}