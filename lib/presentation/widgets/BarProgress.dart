import 'package:flutter/material.dart';

//-------------------------------------------------------------//-----------------------------------------------------------------------//

class Barra extends StatelessWidget {
  final int cantidad;
  final int actual;
  final Color mainColor;
  final Color secondColor;

  const Barra(
      {super.key,
      required this.cantidad,
      required this.actual,
      required this.mainColor,
      required this.secondColor});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 8, 24, 8),
      // padding: const EdgeInsets.all(8.0),
      child: Container(
        width: size.width,
        height: 20,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: cantidad,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: actual < index ? mainColor : secondColor,
                borderRadius: BorderRadius.circular(20),
              ),
              width: (size.width - ((cantidad - 1) * 8) - 48) / cantidad,
              height: 4.5,
              margin: EdgeInsets.only(right: index == (cantidad - 1) ? 0 : 8),
            );
          },
        ),
      ),
    );

    //------------------------------/_-------------------------
  }
}
