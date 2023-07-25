import 'package:flutter/material.dart';

class welcPage extends StatefulWidget {
  const welcPage({super.key});

  @override
  State<welcPage> createState() => _welcPageState();
}

class _welcPageState extends State<welcPage> {
  @override
  Widget build(BuildContext context) {
    return AppBar();

    Bpdy:
    (
      children: [
        PageView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: <Widget>[Container()],
        ),
      ],
    );
  }
}
