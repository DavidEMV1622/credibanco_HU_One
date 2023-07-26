import 'package:credibanco_hu_aca_1715/presentation/colors/color.dart';
import 'package:credibanco_hu_aca_1715/presentation/utils/TextFormatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AvisoPage extends StatefulWidget {
  const AvisoPage({super.key});

  @override
  State<AvisoPage> createState() => _AvisoPageState();
}

class _AvisoPageState extends State<AvisoPage> {

  /*
  bool _working = false;

  void startWorking() async {
    this.setState(() {
      this._working = true;
    });
  }

  void finishWorking() {
    this.setState(() {
      this._working = false;
    });
  }
  */

  // Variable para inicializar la imagen
  final String assetName = 'assets/imageOne.svg';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.colorBlanco,
      ),

      body: Center(
        

          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              buildCard_1(),
              
              buildCard_2(),
              
              buildCard_3(),
            ]
          )
        ),
    );
  }

  Widget buildCard_1() => 
    Container(
      child: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[

            SizedBox(width: 12,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                
                SizedBox(
                  // Toma todo el largo de la pantalla y se multiplica por el 23%
                  width: MediaQuery.of(context).size.width * 0.30,
                  height: 15.0, // ancho de la barra de progreso

                  // Widget "ClipRRect" para redondear las esquinas del hijo
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    // Creacion de una linea de progreso
                    child: LinearProgressIndicator(
                      //value: this._working? null: 1,
                      value: 1, // "0" vacio y "1" lleno
                      backgroundColor: CustomColors.colorGris_3, // Color del fondo
                      // Color de la barra con animacion
                      valueColor: AlwaysStoppedAnimation(CustomColors.colorVerdePantano),
                      minHeight: 10, // Grosor de la linea de progreso
                    ),
                  ),
                ),

                SizedBox(width: 12,),

                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.30,
                  height: 15.0,

                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    
                    child: LinearProgressIndicator(
                      value: 0, // "0" vacio y "1" lleno
                      backgroundColor: CustomColors.colorGris_3,
                      valueColor: AlwaysStoppedAnimation(CustomColors.colorVerdePantano),
                      minHeight: 10,
                    ),
                  ),
                ),

                SizedBox(width: 12,),

                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.30,
                  height: 15.0,

                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    
                    child: LinearProgressIndicator(
                      value: 0, // "0" vacio y "1" lleno
                      backgroundColor: CustomColors.colorGris_3,
                      valueColor: AlwaysStoppedAnimation(CustomColors.colorVerdePantano),
                      minHeight: 10,
                    ),
                  ),
                ),
              ],
            ),
            
            /*
                ElevatedButton(
                    child: Text("Start"),
                    onPressed: this._working? null: () {
                      this.startWorking();
                    }
                ),
                ElevatedButton(
                    child: Text("Finish"),
                    onPressed: !this._working? null: () {
                      this.finishWorking();
                    }
                ),
            */
                
            SizedBox(
              height: 15.0,
            ),
            
            subtituloDos("Bienvenido"),
            
            SizedBox(
              height: 15.0,
            ),

            textoCuerpo("Además de gestionar tus transacciones, también podrás integrar a tu equipo de trabajo"),

            SizedBox(
              height: 100.0,
            ),

            Center(
              // Llamado de la imagen
              child: SvgPicture.asset( 
                'assets/imageOne.svg'
              ),
            ),
          ]
        ),
      ),
    decoration: BoxDecoration(
      color: Colors.red,
    
    ),
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    
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

  // Widget para invocar la imagen .svg
  final Widget svg = SvgPicture.asset(
    "imageOne",
  );
  
}