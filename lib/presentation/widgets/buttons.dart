import 'package:flutter/material.dart';

class BtnPrimaery extends StatelessWidget {
  //CREACION DE PARAMETROS / VARIABLES
  final String textButton;
  final Color colorBox;
  final BoxBorder? border;
  final void Function()? onPressed;
  final double whitMedid;
  const BtnPrimaery(
      {super.key,
      required this.textButton,
      required this.colorBox,
      this.border,
      this.onPressed,
      required this.whitMedid});

  //IMPLEMENTACION DE VARIABLES
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colorBox, // Color del campo del propio input
        border:
            border, // Define si va a tener un borde o no dependiendo si se le agrega como parametro
        borderRadius: BorderRadius.circular(10), // Borde del campo
      ),
      child: MaterialButton(
        minWidth: whitMedid,
        // largo del botonque abarque toda la pantalla
        height: 40, // Ancho del boton

        onPressed: onPressed, // Evento al presionar el boton

        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),

        // Agregar texto dentro del boton
        child: Text(
          textButton,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
