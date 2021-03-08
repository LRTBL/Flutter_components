import 'package:flutter/material.dart';
import 'package:flutter_components/src/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:flutter_components/src/screens/alert_screen.dart';
// import 'package:flutter_components/src/screens/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        debugShowCheckedModeBanner: false,
        title: 'Componentes App',
        initialRoute: "/",
        routes: getApplicationRoutes(),
        supportedLocales: [
          const Locale('en', 'US'), // English, no country code
          const Locale('es', 'ES'), // Arabic, no country code
        ]
        // onGenerateRoute: (RouteSettings settings) {
        //   return MaterialPageRoute(
        //       builder: (BuildContext context) => AlertScreen());
        // },
        );
  }
}
