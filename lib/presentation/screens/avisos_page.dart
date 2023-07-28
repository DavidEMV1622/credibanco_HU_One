import 'package:credibanco_hu_aca_1715/presentation/colors/color.dart';
import 'package:credibanco_hu_aca_1715/presentation/utils/TextFormatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/barrProgress.dart';
import '../widgets/buttons.dart';

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
        child: ListView(
          addSemanticIndexes: true,
          physics: ScrollPhysics(), // animacion al llegar al final de la lista
          scrollDirection: Axis.horizontal, // Mover la lista en horizontal
          children: [
            //buildCard_1(),

            buildCard_1_prueba(),
            
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
        child: Padding(
          padding: EdgeInsets.fromLTRB(12, 20, 12, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
        
            children: <Widget>[
        
              Row(
                // Separacion entre cada widdget (cada barra de progreso)
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // Centrar widgets
                crossAxisAlignment: CrossAxisAlignment.center,
                
                children: [
                  // Llamada de la bara de progreso 1
                  ProgressBarr(valor: 1),
                  // Llamada de la bara de progreso 2
                  ProgressBarr(valor: 0),
                  // Llamada de la bara de progreso 3
                  ProgressBarr(valor: 0),
                ],
              ),

              // Manejo de los textos
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    subtituloDos("Bienvenido"),

                    SizedBox(
                      height: 25.0,
                    ),
              
                    textoCuerpo("Además de gestionar tus transacciones, también podrás integrar a tu equipo de trabajo."),
                  ]
                ),
              ),

              // Llamado de la imagen
              Center(
                child: SvgPicture.asset( 
                  'assets/imageOne.svg'
                ),
              ),

              SizedBox(
                height: 250.0,
              ),
            ]
          ),
        ),
      ),
    /*
    decoration: BoxDecoration(
      color: Colors.red,
    
    ), */
    // Definir parametro del largo y alto de la pantalla para el contenido
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    
  );

  Widget buildCard_1_prueba() => 
    Container(
      child: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(12, 20, 12, 20),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
        
            children: <Widget>[
        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                
                children: [
                  // Llamada de la bara de progreso 1
                  ProgressBarr(valor: 1),
                  // Llamada de la bara de progreso 2
                  ProgressBarr(valor: 0),
                  // Llamada de la bara de progreso 3
                  ProgressBarr(valor: 0),
                ],
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),

              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    subtituloDos("Bienvenido"),

                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
              
                    textoCuerpo("Además de gestionar tus transacciones, también podrás integrar a tu equipo de trabajo."),
                  ]
                ),
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
              ),
              
              Center(
                // Llamado de la imagen
                child: SvgPicture.asset( 
                  'assets/imageOne.svg',
                  width: 2000,
                  height: 400,
                ),
              ),

              /*
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.33,
              ),
              */
            ]
          ),
        ),
      ),
      /*
    decoration: BoxDecoration(
      color: Colors.red,
    
    ), */
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    
  );

  Widget buildCard_2() => 
    Container(
      child: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(12, 20, 12, 20),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
        
            children: <Widget>[
        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                  // Llamada de la bara de progreso 1
                  ProgressBarr(valor: 1),
                  // Llamada de la bara de progreso 2
                  ProgressBarr(valor: 1),
                  // Llamada de la bara de progreso 3
                  ProgressBarr(valor: 0),
                ],
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),

              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    subtituloDos("Bienvenido"),

                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                      
                    textoCuerpo("Podrás realizar la administración de usuarios siempre que lo desees desde la opción de: "),

                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),

                    textoEtiqueta("Más- Adminitración de usuarios"),
                  ],
                ),
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),

              Center(
                // Llamado de la imagen
                child: SvgPicture.asset( 
                  'assets/imageTwo.svg',
                  width: 2000,
                  height: 400,
                ),
              ),
            ]
          ),
        ),
      ),
      /*
    decoration: BoxDecoration(
      color: Colors.green,
    
    ),*/
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
  );

  Widget buildCard_3() => 
    Container(
      child: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(12, 20, 12, 20),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
        
            children: <Widget>[
        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                
                children: [
                  // Llamada de la bara de progreso 1
                  ProgressBarr(valor: 1),
                  // Llamada de la bara de progreso 2
                  ProgressBarr(valor: 1),
                  // Llamada de la bara de progreso 3
                  ProgressBarr(valor: 1),
                ],
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),

              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    subtituloDos("Bienvenido"),

                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
        
                    textoCuerpo("Podrás crear usuarios, activarlos, inactivarlos y editarlos"),
                  ],
                ),
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.12,
              ),

              Center(
                // Llamado de la imagen
                child: SvgPicture.asset( 
                  'assets/imageThree.svg',
                  width: 600,
                  height: 250,
                ),
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.16,
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BtnPrimaery(
                    textButton: "Omitir",
                    colorBox: Colors.white,
                    border: Border.all(width: 2),
                    onPressed: () {},
                  ),

                  BtnPrimaery(
                    textButton: "Continuar",
                    colorBox: CustomColors.colorAmarilloMostaza,
                    onPressed: () {},
                  ),
                ]
              ),
            ]
          ),
        ),
      ),
      /*
    decoration: BoxDecoration(
      color: Colors.yellow,
    
    ), */
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
  );


/*
  Widget buildCard_1() => 
    Container(
      child: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(12, 20, 12, 20),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
        
            children: <Widget>[
        
              SizedBox(width: 12,),
        
              Row(
                // Separacion entre cada widdget
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // Centrar widgets
                crossAxisAlignment: CrossAxisAlignment.center,
                
                children: [
                  // Llamada de la bara de progreso 1
                  ProgressBarr(valor: 1),
                  // Llamada de la bara de progreso 2
                  ProgressBarr(valor: 0),
                  // Llamada de la bara de progreso 3
                  ProgressBarr(valor: 0),
                ],
              ),
              
              SizedBox(
                height: 15.0,
              ),
              
              subtituloDos("Bienvenido"),
              
              SizedBox(
                height: 15.0,
              ),
        
              textoCuerpo("Además de gestionar tus transacciones, también podrás integrar a tu equipo de trabajo."),
        
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
      ),
      /*
    decoration: BoxDecoration(
      color: Colors.red,
    
    ), */
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    
  );
*/
/*
  Widget buildCard_2() => 
    Container(
      child: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(12, 20, 12, 20),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
        
            children: <Widget>[
        
              SizedBox(width: 12,),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                  // Llamada de la bara de progreso 1
                  ProgressBarr(valor: 1),
                  // Llamada de la bara de progreso 2
                  ProgressBarr(valor: 1),
                  // Llamada de la bara de progreso 3
                  ProgressBarr(valor: 0),
                ],
              ),
                  
              SizedBox(
                height: 15.0,
              ),
              
              subtituloDos("Bienvenido"),
              
              SizedBox(
                height: 15.0,
              ),
        
              textoCuerpo("Podrás realizar la administración de usuarios siempre que lo desees desde la opción de: "),

              SizedBox(
                height: 15.0,
              ),

              textoEtiqueta("Más- Adminitración de usuarios"),

              SizedBox(
                height: 50.0,
              ),
        
              Center(
                // Llamado de la imagen
                child: SvgPicture.asset( 
                  'assets/imageTwo.svg',
                  width: 2000,
                  height: 400,
                ),
              ),
            ]
          ),
        ),
      ),
      /*
    decoration: BoxDecoration(
      color: Colors.green,
    
    ),*/
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
  );
*/
/*
  Widget buildCard_3() => 
    Container(
      child: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(12, 20, 12, 20),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
        
            children: <Widget>[
        
              SizedBox(width: 12,),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                
                children: [
                  // Llamada de la bara de progreso 1
                  ProgressBarr(valor: 1),
                  // Llamada de la bara de progreso 2
                  ProgressBarr(valor: 1),
                  // Llamada de la bara de progreso 3
                  ProgressBarr(valor: 1),
                ],
              ),
                  
              SizedBox(
                height: 15.0,
              ),
              
              subtituloDos("Bienvenido"),
              
              SizedBox(
                height: 15.0,
              ),
        
              textoCuerpo("Podrás crear usuarios, activarlos, inactivarlos y editarlos"),
        
              SizedBox(
                height: 100.0,
              ),
        
              Center(
                // Llamado de la imagen
                child: SvgPicture.asset( 
                  'assets/imageThree.svg',
                  width: 500,
                  height: 250,
                ),
              ),

              SizedBox(
                height: 180.0,
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BtnPrimaery(
                    textButton: "Omitir",
                    colorBox: Colors.white,
                    border: Border.all(width: 2),
                    onPressed: () {},
                  ),

                  BtnPrimaery(
                    textButton: "Continuar",
                    colorBox: CustomColors.colorAmarilloMostaza,
                    onPressed: () {},
                  ),
                ]
              ),
            ]
          ),
        ),
      ),
      /*
    decoration: BoxDecoration(
      color: Colors.yellow,
    
    ), */
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
  );
*/

}