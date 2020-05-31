import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:examen_global/src/pages/pregunta1.dart';
import 'package:examen_global/src/pages/funciones.dart';
import 'package:examen_global/src/pages/globals.dart' as globals;

class Resultado extends StatefulWidget {
  static final String routeName = 'resultado';

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultado'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Resultado', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
            Text( getPuntuacion() + ' puntos', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),)
          ],
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton( 
            heroTag: 'boton41',
            tooltip: 'Rehacer cuestionario',
            child: Icon(Icons.list), 
            onPressed: () {
              globals.respuesta1 = false;
              globals.respuesta2 = false;
              globals.respuesta3 = false;
              Navigator.push( context, MaterialPageRoute(builder: (context) => Pregunta1()) );
            } 
          ),
          SizedBox(width: 10.0),
          FloatingActionButton( 
            heroTag: 'boton42',
            tooltip: 'Salir de la aplicación',
            child: Icon(Icons.exit_to_app), 
            onPressed: () {
              SystemNavigator.pop();
            }
          ),
        ]
      )

    );
  }
}