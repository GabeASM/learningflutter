import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("hola"), elevation: 0, backgroundColor: Colors.indigo),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("nombre de la ruta"),
                leading: Icon(Icons.alternate_email_sharp),
                onTap: () {},
              );
            },
            separatorBuilder: (context, index) => Divider(),
            itemCount: 100));
  }
}
