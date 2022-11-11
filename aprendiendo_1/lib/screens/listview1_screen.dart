import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  //siempre es buena practica colocar el key
  //nos permite controlar el widget
  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Listview Tipo 1"),
      ),
      body: ListView(children: const [
        Text("Hola mundo")
      ],)
    );
  }
}