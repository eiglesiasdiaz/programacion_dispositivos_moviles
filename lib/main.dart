import 'package:flutter/material.dart';
import 'package:examen_global/src/pages/pregunta1.dart';
import 'package:examen_global/src/pages/pregunta2.dart';
import 'package:examen_global/src/pages/pregunta3.dart';
import 'package:examen_global/src/pages/resultado.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Examen Global',
      initialRoute: Pregunta1.routeName,
      routes: {
        Pregunta1.routeName : (BuildContext context) => Pregunta1(),
        Pregunta2.routeName : (BuildContext context) => Pregunta2(),
        Pregunta3.routeName : (BuildContext context) => Pregunta3(),
        Resultado.routeName : (BuildContext context) => Resultado(),
      },
    );
  }
}
