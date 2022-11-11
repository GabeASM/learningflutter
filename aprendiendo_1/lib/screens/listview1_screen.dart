import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  //siempre es buena practica colocar el key
  //nos permite controlar el widget
  const ListView1Screen({Key? key}) : super(key: key);

  final options = const  ["Megaman" , "Metal gear", "Super Smash" , "Final fANTASY"]; 
  

  // Aveces el hotreload falla, hacer hot restart si es que asi 


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Listview Tipo 1"),
      ),
      body: ListView(
        children:  [
        ...options.map(
          (e) => ListTile(
            title: Text(e),
            trailing: const Icon(Icons.safety_divider),       
          )  
          ).toList()
      ],)
    );
  }
}