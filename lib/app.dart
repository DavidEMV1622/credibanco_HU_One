import 'package:credibanco_hu_aca_1715/presentation/screens/avisos_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // widget principal
      home: Center(
        child: AvisoPage(),
        //child: ListViewPage(),
      ),
    );
  }
}