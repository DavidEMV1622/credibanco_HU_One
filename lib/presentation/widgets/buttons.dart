import 'package:flutter/material.dart';

// ---- Clase para el boton general principal ----
class BtnPrimaery extends StatelessWidget {
  //CREACION DE PARAMETROS / VARIABLES
  final String textButton;
  final Color colorBox;
  final BoxBorder? border;
  final void Function()? onPressed;
  const BtnPrimaery(
      {super.key,
      required this.textButton,
      required this.colorBox,
      this.border,
      this.onPressed});

  //IMPLEMENTACION DE VARIABLES
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colorBox, // Color del campo del propio input
        border: border, // Define si va a tener un borde o no dependiendo si se le agrega como parametro
        borderRadius: BorderRadius.circular(10), // Borde del campo
      ),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width * 0.40, // largo del botonque abarque toda la pantalla
        //height: 60, // Ancho del boton

        onPressed: onPressed, // Evento al presionar el boton

        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),

        // Agregar texto dentro del boton
        child: Text(
          textButton,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}