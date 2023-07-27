import 'package:credibanco_hu_aca_1715/presentation/widgets/BarProgress.dart';
import 'package:flutter/material.dart';

import 'welcome.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(child: WelcomeView()),
    );
  }
}
