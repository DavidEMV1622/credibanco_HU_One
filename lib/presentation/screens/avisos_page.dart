import 'package:credibanco_hu_aca_1715/presentation/colors/color.dart';
import 'package:credibanco_hu_aca_1715/presentation/utils/TextFormatter.dart';
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
        backgroundColor: CustomColors.colorBlanco,
      ),

      body: Center(
        child: Padding(

          padding: EdgeInsets.all(20),

          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              buildCard_1(),

              SizedBox(width: 12),
              
              buildCard_2(),

              SizedBox(width: 12),
              
              buildCard_3(),
            ]
          )
        ),
      )  
    );
  }

  Widget buildCard_1() => 
    Container(
      child: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[
            SizedBox(
              height: 15.0,
            ),
            
            subtituloDos("Bienvenido"),
            
            SizedBox(
              height: 15.0,
            ),

            textoCuerpo("Además de gestionar tus transacciones, también \n podrás integrar a tu equipo de trabajo"),
            
            SizedBox(
              height: 100.0,
            ),

            SizedBox(
              height: 250,
              width: 350,
              child: Image.asset("assets/imageOne.svg"),
            )

          ]
        ),
      ),
    /*decoration: BoxDecoration(
      color: Colors.red,
    
    ),
    width: 400,
    height: 750,
    child: Text("Cuadro 1"),*/
  );

  Widget buildCard_2() => 
    Container(
    decoration: BoxDecoration(
      color: Colors.green,
    
    ),
    width: 400,
    height: 750,
    child: Text("Cuadro 2"),
  );

  Widget buildCard_3() => 
    Container(
    decoration: BoxDecoration(
      color: Colors.amber,
    
    ),
    width: 400,
    height: 750,
    child: Text("Cuadro 3"),
  );
}