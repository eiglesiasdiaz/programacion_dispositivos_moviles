import 'package:flutter/material.dart';
import 'package:examen_global/src/pages/resultado.dart';
import 'package:examen_global/src/pages/globals.dart' as globals;

class Pregunta3 extends StatefulWidget {
  static final String routeName = 'pregunta3';

  @override
  _Pregunta3State createState() => _Pregunta3State();
}

class _Pregunta3State extends State<Pregunta3> {
  int _pregunta3 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pregunta 3'),
      ),
      body: ListView(
        children: <Widget>[
          
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text('¿Cuáles fueron las dos ciudades más importantes durante el antiguo Egipto?', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),)
          ),
          
          Divider(),

          RadioListTile(
            value: 1, 
            title: Text('a. Menfis y Roma'),
            groupValue: _pregunta3, 
            onChanged: (value) {
              setState(() {
                _pregunta3 = value;
                globals.respuesta3 = false;
              });
            }
          ),

          RadioListTile(
            value: 2, 
            title: Text('b. Atenas y Tebas'),
            groupValue: _pregunta3, 
            onChanged: (value) {
              setState(() {
                _pregunta3 = value;
                globals.respuesta3 = false;
              });
            }
          ),

          RadioListTile(
            value: 3, 
            title: Text('c. Menfis y Tebas'),
            groupValue: _pregunta3, 
            onChanged: (value) {
              setState(() {
                _pregunta3 = value;
                globals.respuesta3 = true;
              });
            }
          ),

          RadioListTile(
            value: 4, 
            title: Text('d. Persépolis y Babilonia'),
            groupValue: _pregunta3, 
            onChanged: (value) {
              setState(() {
                _pregunta3 = value;
                globals.respuesta3 = false;
              });
            }
          ),

        ],
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton( 
            heroTag: 'boton31',
            child: Icon(Icons.done), 
            onPressed: () {
              if (globals.respuesta3) {
                _showAlertDialog(context, 'Pregunta 3', 'La respuesta es CORRECTA.');
              } else {
                _showAlertDialog(context, 'Pregunta 3', 'La respuesta correcta es la C.');
              }
            } 
          ),
          SizedBox(width: 10.0),
          FloatingActionButton( 
            heroTag: 'boton32',
            child: Icon(Icons.send), 
            onPressed: () {
              Navigator.push( context, MaterialPageRoute(builder: (context) => Resultado()) );
            }
          ),
        ]
      )

    );
  }
}

void _showAlertDialog(BuildContext context, String titulo, String mensaje) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (buildcontext) {
      return AlertDialog(
        title: Text(titulo),
        content: Text(mensaje),
        actions: <Widget>[
          RaisedButton(
            child: Text("Cerrar"),
            onPressed: (){ Navigator.of(context).pop(); },
          )
        ],
      );
    }
  );
}
