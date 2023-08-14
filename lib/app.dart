import 'package:flutter/material.dart';
import 'presentation/screens/Login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // widget principal
      home: Center(
        child: LoginPage(),
      ),
    );
  }
}