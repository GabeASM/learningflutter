import 'package:aprendiendo_1/router/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  /*
  ------------------ListView.separated------------------ 
  El ListView.separated nos ayuda a separar las cosas mas facil. 
  Tiene tres argumentos y dos de ellos deben retornar widgets.
  El otro debe recibir la cantidad de la lista que queremos.

  Estamos iterando la lista sin un map o un for 


  ------------------ListTile------------------
  Nos permite agregar widgets a cada iteracion del ListView
  perite muchos widgets 

   ------------------BuildContext------------------
    Sirve como memoria de como esta construida nuestra aplicacion
    Se utiliza en Navigator porque la ruta necesita saber donde colocarse y
    toda la informacion anterior de app
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Universidad de la frontera"),
            elevation: 0,
            backgroundColor: Colors.indigo),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(AppRoute.menuOption[index].nombre),
                subtitle: const Text("SEMESTRE 2-2022"),
                leading: Icon(AppRoute.menuOption[index].icon),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {
                  //  final route = MaterialPageRoute(
                  //    builder: (context) => ListView1Screen(),
                  //  );
                  Navigator.pushNamed(
                      context, AppRoute.menuOption[index].route);
                },
              );
            },
            separatorBuilder: (context, index) => const Divider(),
            itemCount: AppRoute.menuOption.length));
  }
}
