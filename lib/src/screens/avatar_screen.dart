import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar Page"),
        actions: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://upload.wikimedia.org/wikipedia/commons/7/7b/Stan_Lee_by_Gage_Skidmore_3.jpg"),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0, left: 10.0),
            child: CircleAvatar(
              child: Text("SL"),
              backgroundColor: Colors.purple,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              "https://upload.wikimedia.org/wikipedia/commons/7/7b/Stan_Lee_by_Gage_Skidmore_3.jpg"),
          placeholder: AssetImage("assets/jar-loading.gif"),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
