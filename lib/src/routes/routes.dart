import 'package:flutter/material.dart';

import 'package:flutter_components/src/screens/alert_screen.dart';
import 'package:flutter_components/src/screens/animated_screen.dart';
import 'package:flutter_components/src/screens/avatar_screen.dart';
import 'package:flutter_components/src/screens/card_screen.dart';
import 'package:flutter_components/src/screens/home_screen.dart';
import 'package:flutter_components/src/screens/input_screen.dart';
import 'package:flutter_components/src/screens/listview_screen.dart';
import 'package:flutter_components/src/screens/slider_screen.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomeScreen(),
    'alert': (BuildContext context) => AlertScreen(),
    'avatar': (BuildContext context) => AvatarScreen(),
    'card': (BuildContext context) => CardScreen(),
    'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
    'inputs': (BuildContext context) => InputScreen(),
    'slider': (BuildContext context) => SliderScreen(),
    'list': (BuildContext context) => ListViewPage(),
  };
}
