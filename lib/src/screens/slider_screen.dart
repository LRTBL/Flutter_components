import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  SliderScreen({Key key}) : super(key: key);

  @override
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _slider = 100.0;
  bool _check = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider page"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _createSlider(),
            _createCheckBox(),
            _createSwitch(),
            Expanded(child: _createImage()),
          ],
        ),
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
      inactiveColor: Colors.deepOrangeAccent,
      activeColor: Colors.indigoAccent,

      label: "Tamaño de imagen",
      // divisions: 20,
      onChanged: (_check)
          ? null
          : (double newValue) {
              setState(() {
                _slider = newValue;
              });
            },
      value: _slider,
      min: 100.0,
      max: 400.0,
    );
  }

  Widget _createCheckBox() {
    return CheckboxListTile(
      title: Text("Bloquear lista"),
      value: _check,
      onChanged: (bool newValue) {
        setState(() {
          _check = newValue;
        });
      },
    );
  }

  Widget _createSwitch() {
    return SwitchListTile(
      title: Text("Bloquear lista"),
      value: _check,
      onChanged: (bool newValue) {
        setState(() {
          _check = newValue;
        });
      },
    );
  }

  Widget _createImage() {
    return Image(
      width: _slider,
      fit: BoxFit.contain,
      image: NetworkImage(
          "https://upload.wikimedia.org/wikipedia/commons/7/7b/Stan_Lee_by_Gage_Skidmore_3.jpg"),
    );
  }
}
