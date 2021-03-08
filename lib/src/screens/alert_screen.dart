import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Page"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text(
            "Mostrar alerta",
          ),
          textColor: Colors.white,
          color: Colors.blue,
          onPressed: () => showAlert(context),
          shape: StadiumBorder(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.ac_unit_outlined),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void showAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            title: Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Este es el contenido de la caja de la alerta'),
                FlutterLogo(
                  size: 100.0,
                )
              ],
            ),
            actions: <Widget>[
              FlatButton(
                child: Text("Cancelar"),
                onPressed: () => Navigator.of(context).pop(),
              ),
              FlatButton(
                child: Text("Ok"),
                onPressed: () {},
              ),
            ],
          );
        });
  }
}
