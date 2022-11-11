import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  //siempre es buena practica colocar el key
  //nos permite controlar el widget
  const ListView2Screen({Key? key}) : super(key: key);

  final options = const  ["Megaman" , "Metal gear", "Super Smash" , "Final fANTASY"]; 
  

  // Aveces el hotreload falla, hacer hot restart si es que asi 

  /*
 ------------------AppBar------------------ 
  crea nuestro Appbar (lo que esta arriba de la app)
  Recibe un monton de parametros, title es el principal.

  *Widgets/Clases utilizados en Appbar* 
  ->Text : Nos permite poner texto en la app
  ->
  

  ------------------ListView.separated------------------ 
  El ListView.separated nos ayuda a separar las cosas mas facil. 
  Tiene tres argumentos y dos de ellos deben retornar widgets.
  El otro debe recibir la cantidad de la lista que queremos.

  Estamos iterando la lista sin un map o un for 


  ------------------ListTile------------------
  Nos permite agregar widgets a cada iteracion del ListView
  perite muchos widgets 

  https://api.flutter.dev/flutter/material/ListTile-class.html
   */
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Listview Tipo 1"),
        elevation: 0 ,
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) {
          return ListTile(
            title:Text(options[index]) ,
            trailing: const Icon(Icons.add_box , color: Colors.indigo,),
            onTap: () {
            final game = options[index]; 
            print(game);
            },
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();  
          },
          
    )
    );
  }
}