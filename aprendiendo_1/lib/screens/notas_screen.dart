import 'package:aprendiendo_1/screens/formulario_notas_screen.dart';
import 'package:flutter/material.dart';

class NotasScreen extends StatelessWidget {
  const NotasScreen({Key? key}) : super(key: key);

  final options = const ["Prom.tareas", "Trabajos"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Menu de navegacion"),
          elevation: 0,
          backgroundColor: Colors.indigo),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(options[index]),
            subtitle: const Text("promedio de act. individuales"),
            trailing: const Icon(
              Icons.add_box,
              color: Colors.indigo,
            ),
            onTap: () {
              final game = options[index];
              print(game);
            },
          );
        },
        itemCount: options.length,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
          icon: const Icon(Icons.fact_check_sharp),
          onPressed: () {
            Navigator.pushNamed(context, "/form");
          },
          label: const Text("agregar nota")),
    );
  }
}
