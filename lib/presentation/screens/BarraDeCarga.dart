import 'package:flutter/material.dart';

class Barra_A extends StatefulWidget {
  const Barra_A({super.key});

  @override
  State<Barra_A> createState() => _Barra_AState();
}

class _Barra_AState extends State<Barra_A> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LinearProgressIndicator(
              backgroundColor: Color.fromRGBO(207, 204, 211, 1),
              valueColor:
                  AlwaysStoppedAnimation(Color.fromRGBO(10, 164, 159, 1)),
              value: 1,
            )
          ],
        ),
      ),
    );
  }
}
