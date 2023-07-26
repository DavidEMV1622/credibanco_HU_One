import 'package:flutter/material.dart';

import 'presentation/screens/BarraDeCarga.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Row(
          children: [
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.30,
                height: 15,
                child: Barra_A()),
          ],
        ),
      ),
    );
  }
}
