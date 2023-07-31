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

  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Manejo del AppBar
      appBar: AppBar(
        backgroundColor: CustomColors.colorBlanco,
      ),

      body: Center(
        // Inicio del manejo del ListView o PageView
        child: Column(
          children: [
            Text("$page"),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                
                
                children: [
                  // Llamada de la bara de progreso 1
                  Expanded(child: ProgressBarr(valor: page.toDouble())),
                  // Llamada de la bara de progreso 2
                  Expanded(child: ProgressBarr(valor: page.toDouble())),
                  // Llamada de la bara de progreso 3
                  Expanded(child: ProgressBarr(valor: page.toDouble())),
                ],
              ),
            Expanded(
              child: PageView(
                
                onPageChanged: (currentpage){
                  
                  setState(() {
                  page = currentpage;  
                  }); 
                },
                physics: ScrollPhysics(), // animacion al llegar al final de la lista
                scrollDirection: Axis.horizontal, // Mover la lista en horizontal
            
                // Llamada de cada pantalla
                children: [
                  buildCard_1(),
                  
                  buildCard_2(),
                  
                  buildCard_3(),
                ]
              ),
            ),
          ],
        )
      ),persistentFooterButtons: [
        if(page == 2)
          Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BtnPrimaery(
                      textButton: "Omitir",
                      colorBox: CustomColors.colorBlanco,
                      border: Border.all(width: 2),
                      onPressed: () {},
                    ),

                    const SizedBox(
                      width: 15,
                    ),

                    BtnPrimaery(
                      textButton: "Continuar",
                      colorBox: CustomColors.colorAmarilloMostaza,
                      onPressed: () {},
                    ),
                  ]
                )
      ],
    );
  }

  // Widget de la primera pantalla
  Widget buildCard_1() => 
    SizedBox(
      child: Center(
        child: Padding(
          // Padding de separacion entre el contenido y los bordes del celular
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            // El texto se queda en la izquierda "ltr" solo se usa en las filas
            //textDirection: TextDirection.ltr,
        
            children: <Widget>[
              
              // Controlar cada barra de progreso en una fila
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                
                children: [
                  // Llamada de la bara de progreso 1
                  Expanded(child: ProgressBarr(valor: 1)),
                  // Llamada de la bara de progreso 2
                  Expanded(child: ProgressBarr(valor: 0)),
                  // Llamada de la bara de progreso 3
                  Expanded(child: ProgressBarr(valor: 0)),
                ],
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
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

  // Widget de la segunda pantalla
  Widget buildCard_2() => 
    Container(
      child: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
        
            children: <Widget>[
        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                  // Llamada de la bara de progreso 1
                  Expanded(child: ProgressBarr(valor: 1)),
                  // Llamada de la bara de progreso 2
                  Expanded(child: ProgressBarr(valor: 1)),
                  // Llamada de la bara de progreso 3
                  Expanded(child: ProgressBarr(valor: 0)),
                ],
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),

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

              textoEtiqueta("Más- Administración de usuarios", 
              MediaQuery.of(context).size.width > 1000? 30
              : MediaQuery.of(context).size.width > 800? 26
              : MediaQuery.of(context).size.width > 600? 22
              : MediaQuery.of(context).size.width > 400? 18 
              : 14,),

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

  // Widget de la tercera pantalla
  Widget buildCard_3() => 
    Container(
      child: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
        
            children: <Widget>[
              
              // Manejo de cada barra de progreso
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                
                children: [
                  // Llamada de la bara de progreso 1
                  Expanded(child: ProgressBarr(valor: 1)),
                  // Llamada de la bara de progreso 2
                  Expanded(child: ProgressBarr(valor: 1)),
                  // Llamada de la bara de progreso 3
                  Expanded(child: ProgressBarr(valor: 1)),
                ],
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),

              subtituloDos("Bienvenido", 
              MediaQuery.of(context).size.width > 1000? 34
              : MediaQuery.of(context).size.width > 800? 30 
              : MediaQuery.of(context).size.width > 600? 26 
              : MediaQuery.of(context).size.width > 400? 22
              : 18,),

              SizedBox(
                height: 17,
              ),
  
              textoCuerpo("Podrás crear usuarios, activarlos, inactivarlos y editarlos", 
              MediaQuery.of(context).size.width > 1000? 30
              : MediaQuery.of(context).size.width > 800? 26
              : MediaQuery.of(context).size.width > 600? 22
              : MediaQuery.of(context).size.width > 400? 18 
              : 14,),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),

                // Llamado de la imagen
              Center(
                child: SvgPicture.asset( 
                  'assets/imageThree.svg',
                  width: 400,
                ),
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.12,
              ),

              // Manejo de los botones
              /*
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BtnPrimaery(
                    textButton: "Omitir",
                    colorBox: CustomColors.colorBlanco,
                    border: Border.all(width: 2),
                    onPressed: () {},
                  ),

                  SizedBox(
                    width: 15,
                  ),

                  BtnPrimaery(
                    textButton: "Continuar",
                    colorBox: CustomColors.colorAmarilloMostaza,
                    onPressed: () {},
                  ),
                ]
              ),*/
            ]
          ),
        ),
      ),
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
  );
}