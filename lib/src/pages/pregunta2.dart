import 'package:flutter/material.dart';
import 'package:examen_global/src/pages/pregunta3.dart';
import 'package:examen_global/src/pages/globals.dart' as globals;

class Pregunta2 extends StatefulWidget {
  static final String routeName = 'pregunta2';

  @override
  _Pregunta2State createState() => _Pregunta2State();
}

class _Pregunta2State extends State<Pregunta2> {
  int _pregunta2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pregunta 2'),
      ),
      body: ListView(
        children: <Widget>[
          
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text('Con la llegada al trono de Carlos I, se instaura en España la monarquía de los Austrias, ¿Qué nombre recibía la rama hispana de la casa europea?', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),)
          ),
          
          Divider(),

          RadioListTile(
            value: 1, 
            title: Text('a. Saboya'),
            groupValue: _pregunta2, 
            onChanged: (value) {
              setState(() {
                _pregunta2 = value;
                globals.respuesta2 = false;
              });
            }
          ),

          RadioListTile(
            value: 2, 
            title: Text('b. Estuardo'),
            groupValue: _pregunta2, 
            onChanged: (value) {
              setState(() {
                _pregunta2 = value;
                globals.respuesta2 = false;
              });
            }
          ),

          RadioListTile(
            value: 3, 
            title: Text('c. Borbón'),
            groupValue: _pregunta2, 
            onChanged: (value) {
              setState(() {
                _pregunta2 = value;
                globals.respuesta2 = false;
              });
            }
          ),

          RadioListTile(
            value: 4, 
            title: Text('d. Habsburgo'),
            groupValue: _pregunta2, 
            onChanged: (value) {
              setState(() {
                _pregunta2 = value;
                globals.respuesta2 = true;
              });
            }
          ),

        ],
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton( 
            heroTag: 'boton21',
            child: Icon(Icons.done), 
            onPressed: () {
              if (globals.respuesta2) {
                _showAlertDialog(context, 'Pregunta 2', 'La respuesta es CORRECTA.');
              } else {
                _showAlertDialog(context, 'Pregunta 2', 'La respuesta correcta es la D.');
              }
            } 
          ),
          SizedBox(width: 10.0),
          FloatingActionButton( 
            heroTag: 'boton22',
            child: Icon(Icons.send), 
            onPressed: () {
              Navigator.push( context, MaterialPageRoute(builder: (context) => Pregunta3()) );
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
