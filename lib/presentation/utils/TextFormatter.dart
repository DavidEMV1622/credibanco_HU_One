// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../colors/color.dart';

// Widget del Titulo principal
Widget tituloEncabezadoUno(String texto) {
  return SizedBox(
    //padding: EdgeInsets.symmetric(vertical: 10),
    child: Text(
      texto,
      style: const TextStyle(
        fontSize: 48, 
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center, // Centrar un texto
    ),
  );
}

// Widget del Subtitulo 1
Widget subtituloUno(String texto) {
  return SizedBox(
    child: Text(
      texto,
      style: const TextStyle(
        fontSize: 22,
        color: CustomColors.colorVerdeOscuroFuerte,
        fontWeight: FontWeight.bold,
        //fontFamily: "Gilroy_Bold",
      ),
      textAlign: TextAlign.center,
    ),
  );
}

// Widget del Subtitulo 2
Widget subtituloDos(String texto, double fontSizeText) {
  return SizedBox(
    child: Text(
      texto,
      style: TextStyle(
        fontSize: fontSizeText,
        color: CustomColors.colorVerdeOscuroFuerte,
        fontWeight: FontWeight.bold,
        //fontFamily: "Gilroy_Bold",
      ),
      textAlign: TextAlign.center,
    ),
  );
}

// Widget del texto Etiqueta
Widget textoEtiqueta(String texto, double fontSizeText) {
  return SizedBox(
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
  return SizedBox(
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
  return SizedBox(
    child: Text(
      texto,
      style: const TextStyle(
        color: CustomColors.colorGris_1,
        fontSize: 12,
      ),
      textAlign: TextAlign.center,
    ),
  );
}