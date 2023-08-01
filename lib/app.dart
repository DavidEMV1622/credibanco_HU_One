import 'package:credibanco_hu_aca_1715/presentation/screens/avisos_page.dart';
import 'package:credibanco_hu_aca_1715/presentation/screens/listOfElements.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // widget principal
      home: Center(
        child: AvisoPage(),
      ),
    );
  }
}