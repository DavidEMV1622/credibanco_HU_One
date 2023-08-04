import 'package:flutter/material.dart';

import '../widgets/BarProgress.dart';
import 'welcome.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(child: WelcomeView()),
    );
    //DESPUES DE ALMUERXZO PROBAR CON UN SCAFFOLD
  }
}
