import 'package:credibanco_hu_aca_1715/presentation/screens/homeRepreLegalPrimera.dart';
import 'package:credibanco_hu_aca_1715/presentation/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/BarProgress.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  int page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Center(
        child: Column(
          children: [
            Barra(
              actual: page,
              cantidad: 3,
              mainColor: Color(0xFFCFCCD3),
              secondColor: Color(0xFF0AA49F),
            ),
            Expanded(
              child: PageView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                onPageChanged: (currentpage) {
                  setState(() {
                    page = currentpage;
                  });
                },
                children: <Widget>[
                  ///------------------Conteiner #1-----------------
                  Container(
                      child: pageRLPV(
                    title: "Bienvenido",
                    textParrafo:
                        "Además de gestionar tus transacciones, también podrás integrar a tu equipo de trabajo",
                    directionImage: "assets/slideUnoRepresentanteLegal.svg",
                  )),
                  //------------------Conteiner #2-----------------
                  Container(
                      child: pageRLPV(
                    title: "Bienvenido",
                    textParrafo:
                        "Podrás realizar la administración de usuarios siempre que lo desees desde la opción de: ",
                    subTitle: "Más- Adminitración de usuarios",
                    directionImage: "assets/imagetwo.svg",
                  )),
                  //-------------------Contein-----------------------
                  Container(
                      child: pageRLPV(
                    title: "Bienvenido",
                    textParrafo:
                        "Podrás crear usuarios, activarlos, inactivarlos y editarlos",
                    directionImage: "assets/imageThree.svg",
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: page == 2
          ? Padding(
              padding: const EdgeInsets.fromLTRB(33, 0, 33, 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BtnPrimaery(
                      textButton: "Omitir",
                      colorBox: Color(0xFFFFFFFF),
                      border: Border.all(width: 2),
                      whitMedid: 188,
                      onPressed: () => {},
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    BtnPrimaery(
                      textButton: "Continuar",
                      colorBox: Color(0xFFFFB600),
                      whitMedid: 188,
                      onPressed: () {},
                    ),
                  ]),
            )
          : null,
    );
  }
}

//----------------------------------------------------------------------//-------------------------------------------------------------
/*        if (page == 2)
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BtnPrimaery(
                  textButton: "Omitir",
                  colorBox: Color.fromRGBO(255, 255, 255, 1),
                  border: Border.all(width: 2),
                  whitMedid: 188,
                  onPressed: () => {},
                ),
                const SizedBox(
                  width: 15,
                ),
                BtnPrimaery(
                  textButton: "Continuar",
                  colorBox: Color(0xFFB600),
                  whitMedid: 188,
                  onPressed: () {},
                ),
              ])
 */