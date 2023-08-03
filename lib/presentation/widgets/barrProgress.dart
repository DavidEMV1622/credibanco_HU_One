// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../colors/color.dart';

class ProgressBarr extends StatefulWidget {
  final int pageActual;
  final int cantidadBarr;

  const ProgressBarr(
      {super.key, required this.pageActual, required this.cantidadBarr});

  @override
  State<ProgressBarr> createState() => _ProgressBarrState();
}

class _ProgressBarrState extends State<ProgressBarr> {
  @override
  Widget build(BuildContext context) {
    return
        /* SizedBox(

      // Toma todo el largo de la pantalla y se multiplica por el 28%
      //width: MediaQuery.of(context).size.width * 0.28,
      //width: double.infinity,
      height: 4.5, // ancho de la barra de progreso

      // Widget "ClipRRect" para redondear las esquinas del hijo
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        // Creacion de una linea de progreso
        child: LinearProgressIndicator(
          value: 1, // "0" vacio y "1" lleno
          backgroundColor: CustomColors.colorGris_3, // Color del fondo
          // Color de la barra con animacion
          valueColor: AlwaysStoppedAnimation(),
          minHeight: 10, // Grosor de la barra de progreso
        ),
      ),
    );
    */
    SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 10,
      
      // decoration: BoxDecoration(
      //   color: Colors.green,
      // ),
      
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.cantidadBarr,
        itemBuilder: (context, index) {
          return Container(
            height: 4.5,
            width: (MediaQuery.of(context).size.width),
            margin: const EdgeInsets.symmetric(horizontal: 0.0), 
            decoration: BoxDecoration(
              color: widget.pageActual < index ?  CustomColors.colorGris_3 : CustomColors.colorVerdePantano,
              borderRadius: BorderRadius.circular(12)
            ),
          );
        },
      ),
    );
  }
}