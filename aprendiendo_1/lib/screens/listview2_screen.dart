import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  //siempre es buena practica colocar el key
  //nos permite controlar el widget
  const ListView2Screen({Key? key}) : super(key: key);

  final options = const  ["Megaman" , "Metal gear", "Super Smash" , "Final fANTASY"]; 
  

  // Aveces el hotreload falla, hacer hot restart si es que asi 

  /*
  El ListView.separated nos ayuda a separar las cosas mas facil. 
  Tiene tres argumentos y dos de ellos deben retornar widgets.
  El otro debe recibir la cantidad de la lista que queremos
   */
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Listview Tipo 1"),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) {
          return ListTile(
            title:Text(options[index]) ,
            trailing: const Icon(Icons.add_box),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(); 
          },
    )
    );
  }
}