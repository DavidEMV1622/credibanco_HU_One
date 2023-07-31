import 'package:flutter/material.dart';

import '../colors/color.dart';

class ProgressBarr extends StatefulWidget {

  final double? valor;

  const ProgressBarr({super.key, this.valor});

  @override
  State<ProgressBarr> createState() => _ProgressBarrState();
}

class _ProgressBarrState extends State<ProgressBarr> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Toma todo el largo de la pantalla y se multiplica por el 28%
      //width: MediaQuery.of(context).size.width * 0.28,
      //width: double.infinity,
      height: 4.5, // ancho de la barra de progreso

      // Widget "ClipRRect" para redondear las esquinas del hijo
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        // Creacion de una linea de progreso
        child: LinearProgressIndicator(
          value: widget.valor, // "0" vacio y "1" lleno
          backgroundColor: CustomColors.colorGris_3, // Color del fondo
          // Color de la barra con animacion
          valueColor: AlwaysStoppedAnimation(CustomColors.colorVerdePantano),
          minHeight: 10, // Grosor de la barra de progreso
        ),
      ),
    );
  }
}