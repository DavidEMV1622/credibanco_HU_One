import 'dart:ffi';

import 'package:flutter/material.dart';
/*
class BarProgres extends StatefulWidget {
  final double spaceOne;
  final double spaceTwo;
  final double spaceThree;

  const BarProgres({
    super.key,
    required this.spaceOne,
    required this.spaceTwo,
    required this.spaceThree,
  });

  @override
  State<BarProgres> createState() => _BarProgresState();
}

class _BarProgresState extends State<BarProgres> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Barra_A(varColor: widget.spaceOne),
                  Barra_A(varColor: widget.spaceTwo),
                  Barra_A(varColor: widget.spaceThree),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
*/
///----------------------------------------------------------------------------------------------------------

class Barra_A extends StatefulWidget {
  final double varColor;
  //final double cantidad;
  //final double lineActual;

  Barra_A({
    super.key,
    required this.varColor,
    /*required this.cantidad, required this.lineActual*/
  });

  @override
  State<Barra_A> createState() => _Barra_AState();
}

class _Barra_AState extends State<Barra_A> {
  @override //LIST VIEW BUILDER
  Widget build(BuildContext context) {
    return SizedBox(
      //  width: MediaQuery.of(context).size.width * 0.30,
      height: 15,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        child: LinearProgressIndicator(
          backgroundColor: Color.fromRGBO(207, 204, 211, 1),
          valueColor: AlwaysStoppedAnimation(Color.fromRGBO(10, 164, 159, 1)),
          value: widget.varColor,
        ),
      ),
    );
  }
}
