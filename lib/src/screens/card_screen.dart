import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
        ],
        padding: EdgeInsets.all(10.0),
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
        elevation: 5.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Icon(
                  Icons.photo_album,
                  color: Colors.blue,
                ),
                title: Text("Soy un tarjeta"),
                subtitle: Text(
                    "Sit dolore consequat consequat ullamco nulla pariatur."),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  FlatButton(
                    child: Text("Cancelar"),
                    onPressed: () {},
                  ),
                  FlatButton(
                    child: Text("Ok"),
                    onPressed: () {},
                  )
                ],
              )
            ],
          ),
        ));
  }

  Widget _cardTipo2() {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                "https://cdn.pixabay.com/photo/2020/02/12/16/13/landscape-4843193_1280.jpg"),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text("No tengo idea"),
          )
        ],
      ),
    );
  }
}
