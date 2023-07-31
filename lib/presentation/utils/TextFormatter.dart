import 'package:flutter/material.dart';
import '../colors/color.dart';

// Widget del Titulo principal
Widget tituloEncabezadoUno(String texto) {
  return Container(
    //padding: EdgeInsets.symmetric(vertical: 10),
    child: Text(
      texto,
      style: TextStyle(
        fontSize: 48, 
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center, // Centrar un texto
    ),
  );
}

// Widget del Subtitulo 1
Widget subtituloUno(String texto) {
  return Container(
    child: Text(
      texto,
      style: TextStyle(
        fontSize: 22,
        color: CustomColors.colorVerdeOscuroFuerte,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    ),
  );
}

// Widget del Subtitulo 2
Widget subtituloDos(String texto, double fontSizeText) {
  return Container(
    child: Text(
      texto,
      style: TextStyle(
        fontSize: fontSizeText,
        color: CustomColors.colorVerdeOscuroFuerte,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    ),
  );
}

// Widget del texto Etiqueta
Widget textoEtiqueta(String texto, double fontSizeText) {
  return Container(
    child: Text(
      texto,
      style: TextStyle(
        color: CustomColors.colorNegro,
        fontSize: fontSizeText, 
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.start,
    ),
  );
}

// Widget del texto Cuerpo
Widget textoCuerpo(String texto, double fontSizeText) {
  return Container(
    child: Text(
      texto,
      style: TextStyle(
        color: CustomColors.colorNegro,
        fontSize: fontSizeText,
      ),
      textAlign: TextAlign.start,
    ),
  );
}

// Widget del texto Cuerpo
Widget textoLeyenda(String texto) {
  return Container(
    child: Text(
      texto,
      style: TextStyle(
        color: CustomColors.colorGris_1,
        fontSize: 12,
      ),
      textAlign: TextAlign.center,
    ),
  );
}