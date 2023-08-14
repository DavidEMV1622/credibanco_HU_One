import 'package:credibanco_hu_aca_1715/presentation/colors/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../widgets/avisosPageGeneral.dart';
import '../widgets/barrProgress.dart';
import '../widgets/buttons.dart';

class AvisoPage extends StatefulWidget {
  const AvisoPage({super.key});

  @override
  State<AvisoPage> createState() => _AvisoPageState();
}

class _AvisoPageState extends State<AvisoPage> {

  int page = 0; // Contador de pagina actual

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Manejo del AppBar
      appBar: AppBar(
        backgroundColor: CustomColors.colorBlanco,
        elevation: 0.0,
      ),

      // Contenido principal
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Text("$page"),
            ProgressBarr(pageActual: page, cantidadBarr: 3,),

            // Inicio del manejo del PageView
            Expanded( // Espande todo el contenido segun el espacio que queda en la pantalla del celular
              child: PageView(
                
                // Aumenta contador de pagina actual
                onPageChanged: (currentpage){
                  setState(() {
                  page = currentpage;  
                  }); 
                },

                physics: const ScrollPhysics(), // animacion al llegar al final de la lista
                scrollDirection: Axis.horizontal, // manejo del slide en horizontal
            
                // Llamada de cada pantalla
                children: [
                  AvisosPageGeneral(
                    subtituloDosGeneral: "Bienvenido", 
                    textoCuerpoGeneral: "Además de gestionar tus transacciones, también podrás integrar a tu equipo de trabajo.",
                    imageGeneral: SvgPicture.asset( 
                      'assets/imageOne.svg',
                      width: 400,
                    ),
                  ),
                  
                  AvisosPageGeneral(
                    subtituloDosGeneral: "Bienvenido", 
                    textoCuerpoGeneral: "Podrás realizar la administración de usuarios siempre que lo desees desde la opción de: ",
                    textoEtiquetaGeneral: "Más- Administración de usuarios",
                    imageGeneral: SvgPicture.asset( 
                      'assets/imagetwo.svg',
                      width: 200,
                    ),
                  ),
                  
                  AvisosPageGeneral(
                    subtituloDosGeneral: "Bienvenido", 
                    textoCuerpoGeneral: "Podrás crear usuarios, activarlos, inactivarlos y editarlos",
                    imageGeneral: SvgPicture.asset( 
                      'assets/imageThree.svg',
                      width: 400,
                    ),
                  ),
                ]
              ),
            ),
          ],
        )
      ),
      // Boton de navegacion que aparece cuando se encuentre en la ultima pagina
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(22, 10, 22, 20),

        child: page == 2? Row(
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
        ) : null,
      ),
    );
  }
}