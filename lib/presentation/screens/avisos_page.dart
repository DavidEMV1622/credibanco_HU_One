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
      // Manejo del AppBar
      appBar: AppBar(
        backgroundColor: CustomColors.colorBlanco,
      ),

      body: Center(
        // Inicio del manejo del ListView
        child: PageView(
          physics: ScrollPhysics(), // animacion al llegar al final de la lista
          scrollDirection: Axis.horizontal, // Mover la lista en horizontal
          children: [
            buildCard_1(),
            
            buildCard_2(),
            
            buildCard_3(),
          ]
        )
      ),
    );
  }

  // Widget de la primera pantalla
  Widget buildCard_1() => 
    Container(
      child: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(12, 20, 12, 20),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
        
            children: <Widget>[
              
              // Controlar cada barra de progreso en una fila
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

              // Manejo de los textos
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    subtituloDos("Bienvenido", 
                    MediaQuery.of(context).size.width > 1000? 34
                    : MediaQuery.of(context).size.width > 800? 30 
                    : MediaQuery.of(context).size.width > 600? 26 
                    : MediaQuery.of(context).size.width > 400? 22
                    : 18,),
                    
                    // Separacion entre cada texto
                    SizedBox(
                      height: 17,
                    ),
              
                    textoCuerpo("Además de gestionar tus transacciones, también podrás integrar a tu equipo de trabajo.",
                    MediaQuery.of(context).size.width > 1000? 30
                    : MediaQuery.of(context).size.width > 800? 26
                    : MediaQuery.of(context).size.width > 600? 22
                    : MediaQuery.of(context).size.width > 400? 18 
                    : 14,),
                  ]
                ),
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
              ),
              

              // Llamado de la imagen y dejarlo centrado
              Center(
                child: SvgPicture.asset( 
                  'assets/imageOne.svg',
                  width: 400,
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
    /* Definir parametro principal del largo y alto de la 
    pantalla para el contenido*/
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
                  
                  ProgressBarr(valor: 1),
                  
                  ProgressBarr(valor: 1),
                  
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
                    subtituloDos("Bienvenido", 
                    MediaQuery.of(context).size.width > 1000? 34
                    : MediaQuery.of(context).size.width > 800? 30 
                    : MediaQuery.of(context).size.width > 600? 26 
                    : MediaQuery.of(context).size.width > 400? 22
                    : 18,),

                    // Separacion entre cada texto
                    SizedBox(
                      height: 17,
                    ),
                      
                    textoCuerpo("Podras realizar la administración de usuarios siempre que lo desees desde la opción de: ", 
                    MediaQuery.of(context).size.width > 1000? 30
                    : MediaQuery.of(context).size.width > 800? 26
                    : MediaQuery.of(context).size.width > 600? 22
                    : MediaQuery.of(context).size.width > 400? 18 
                    : 14,),

                    SizedBox(
                      height: 17,
                    ),

                    textoEtiqueta("Más- Administración de usuarios"),
                  ],
                ),
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),

              // Llamado de la imagen y dejarlo centrado
              
              Center(
                child: SvgPicture.asset( 
                  'assets/imagetwo.svg',
                  width: 200,
                ),
              ),
              
            ]
          ),
        ),
      ),
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
                    subtituloDos("Bienvenido", 
                    MediaQuery.of(context).size.width > 1000? 34
                    : MediaQuery.of(context).size.width > 800? 30 
                    : MediaQuery.of(context).size.width > 600? 26 
                    : MediaQuery.of(context).size.width > 400? 22
                    : 18,),

                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
        
                    textoCuerpo("Podrás crear usuarios, activarlos, inactivarlos y editarlos", 
                    MediaQuery.of(context).size.width > 1000? 30
                    : MediaQuery.of(context).size.width > 800? 26
                    : MediaQuery.of(context).size.width > 600? 22
                    : MediaQuery.of(context).size.width > 400? 18 
                    : 14,),
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
                  width: 300,
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
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
  );
}