import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeTemp extends StatelessWidget {
  final _opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes Temp"),
      ),
      body: ListView(children: _crearItems()),
    );
  }

  List<Widget> _crearItems() {
    return _opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item),
            subtitle: Text('Cuarlquier cosa'),
            leading: Icon(Icons.baby_changing_station),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
