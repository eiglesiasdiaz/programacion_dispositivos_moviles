import 'package:flutter/material.dart';
import 'package:examen_global/src/pages/pregunta2.dart';
import 'package:examen_global/src/pages/globals.dart' as globals;

class Pregunta1 extends StatefulWidget {
  static final String routeName = 'pregunta1';

  @override
  _Pregunta1State createState() => _Pregunta1State();
}

class _Pregunta1State extends State<Pregunta1> {
  int _pregunta1 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pregunta 1'),
      ),
      body: ListView(
        children: <Widget>[
          
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text('De las siguientes palabras señala cuál de ellas está escrita correctamente:', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),)
          ),
          
          Divider(),

          RadioListTile(
            value: 1, 
            title: Text('a. Jiba'),
            groupValue: _pregunta1, 
            onChanged: (value) {
              setState(() {
                _pregunta1 = value;
                globals.respuesta1 = false;
              });
            }
          ),

          RadioListTile(
            value: 2, 
            title: Text('b. Jiva'),
            groupValue: _pregunta1, 
            onChanged: (value) {
              setState(() {
                _pregunta1 = value;
                globals.respuesta1 = false;
              });
            }
          ),

          RadioListTile(
            value: 3, 
            title: Text('c. Giba'),
            groupValue: _pregunta1, 
            onChanged: (value) {
              setState(() {
                _pregunta1 = value;
                globals.respuesta1 = true;
              });
            }
          ),

          RadioListTile(
            value: 4, 
            title: Text('d. Giva'),
            groupValue: _pregunta1, 
            onChanged: (value) {
              setState(() {
                _pregunta1 = value;
                globals.respuesta1 = false;
              });
            }
          ),

        ],
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton( 
            heroTag: 'boton11',
            child: Icon(Icons.done), 
            onPressed: () {
              if (globals.respuesta1) {
                _showAlertDialog(context, 'Pregunta 1', 'La respuesta es CORRECTA.');
              } else {
                _showAlertDialog(context, 'Pregunta 1', 'La respuesta es INCORRECTA.');
              }
            } 
          ),
          SizedBox(width: 10.0),
          FloatingActionButton( 
            heroTag: 'boton12',
            child: Icon(Icons.send), 
            onPressed: () {
              Navigator.push( context, MaterialPageRoute(builder: (context) => Pregunta2()) );
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
