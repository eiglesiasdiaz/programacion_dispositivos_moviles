import 'package:examen_global/src/pages/globals.dart' as globals;

void actualizarPreguntas() {
  globals.aciertos = 0;
  if (globals.respuesta1) {globals.aciertos++;}
  if (globals.respuesta2) {globals.aciertos++;}
  if (globals.respuesta3) {globals.aciertos++;}
}

String getPuntuacion() {
  int puntuacion = 0;

  if (globals.respuesta1) {puntuacion++;}
  if (globals.respuesta2) {puntuacion++;}
  if (globals.respuesta3) {puntuacion++;}
  puntuacion = puntuacion * 10;

  return puntuacion.toString();
}
