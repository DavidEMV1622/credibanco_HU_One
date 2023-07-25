import 'package:flutter/material.dart';

class AvisoPage extends StatefulWidget {
  const AvisoPage({super.key});

  @override
  State<AvisoPage> createState() => _AvisoPageState();
}

class _AvisoPageState extends State<AvisoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      ),

      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          buildCard_1(),

          SizedBox(width: 12),
          
          buildCard_2(),

          SizedBox(width: 12),
          
          buildCard_3(),
        ]
      ),
    );
  }

  Widget buildCard_1() => 
    Container(
    decoration: BoxDecoration(
      color: Colors.red,
    
    ),
    width: 450,
    height: 750,
    child: Text("Cuadro 1"),
  );

  Widget buildCard_2() => 
    Container(
    decoration: BoxDecoration(
      color: Colors.green,
    
    ),
    width: 450,
    height: 750,
    child: Text("Cuadro 2"),
  );

  Widget buildCard_3() => 
    Container(
    decoration: BoxDecoration(
      color: Colors.amber,
    
    ),
    width: 450,
    height: 750,
    child: Text("Cuadro 3"),
  );
}