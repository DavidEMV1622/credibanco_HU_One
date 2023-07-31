import 'package:credibanco_hu_aca_1715/presentation/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/BarProgress.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      body: PageView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          //------------------Conteiner #1-----------------
          Container(child: pageThree()),
          //------------------Conteiner #2-----------------
          //  Container(child: pageOne())
        ],
      ),
    );
  }
}

class pageOne extends StatefulWidget {
  const pageOne({super.key});

  @override
  State<pageOne> createState() => _pageOneState();
}

class _pageOneState extends State<pageOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 25, 20, 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              //-------------------------BARRA DE PROGRESO-------------
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Barra_A(
                  varColor: 1,
                ),
                Barra_A(
                  varColor: 0,
                ),
                Barra_A(
                  varColor: 0,
                ),
              ],
            ),
            SizedBox(
              height: 45,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Bievenido",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width > 500
                        ? 60
                        : MediaQuery.of(context).size.width < 300
                            ? 30
                            : 40,
                    color: Color.fromRGBO(18, 71, 25, 01),
                  ),
                ),
                Text(
                  "Además de gestionar tus transacciones, también podrás integrara tu equipo de trabajo",
                  style: TextStyle(
                    //ESTO HACE EL TEXTO RESPONSIVE
                    fontSize: MediaQuery.of(context).size.width > 500
                        ? 30
                        : MediaQuery.of(context).size.width < 300
                            ? 11
                            : 15,
                  ),
                  textAlign: TextAlign.justify,
                ),

                Center(
                  child: Expanded(
                    child: SvgPicture.asset(
                      'assets/slideUnoRepresentanteLegal.svg',
                      height: 400,
                      width: 2000,
                      //fit: BoxFit.fitHeight,
                    ),
                  ),
                )

                //],
                //)
              ],
            ),
          ],
        ),
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
    );
  }
}

class pageTwo extends StatefulWidget {
  const pageTwo({super.key});

  @override
  State<pageTwo> createState() => _pageTwoState();
}

class _pageTwoState extends State<pageTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 25, 20, 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              //-------------------------BARRA DE PROGRESO-------------
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Barra_A(
                  varColor: 1,
                ),
                Barra_A(
                  varColor: 1,
                ),
                Barra_A(
                  varColor: 0,
                ),
              ],
            ),
            SizedBox(
              height: 45,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Bievenido",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width > 500
                        ? 60
                        : MediaQuery.of(context).size.width < 300
                            ? 30
                            : 40,
                    color: Color.fromRGBO(18, 71, 25, 01),
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                Text(
                  "Podrás realizar la administracion de usuarios siempre que lo desees desde la opcion de:",
                  style: TextStyle(
                    //ESTO HACE EL TEXTO RESPONSIVE
                    fontSize: MediaQuery.of(context).size.width > 500
                        ? 30
                        : MediaQuery.of(context).size.width < 300
                            ? 11
                            : 15,
                  ),
                  textAlign: TextAlign.justify,
                ),

                SizedBox(
                  height: 13,
                ),
                Text(
                  "Más-Administracion de usuarios",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(
                  height: 38,
                ),
                Center(
                  child: Expanded(
                    child: SvgPicture.asset(
                      'assets/imagetwo.svg',
                      height: 450,
                      width: 2100,
                      //fit: BoxFit.fitHeight,
                    ),
                  ),
                )

                //],
                //)
              ],
            ),
          ],
        ),
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
    );
  }
}

class pageThree extends StatefulWidget {
  const pageThree({super.key});

  @override
  State<pageThree> createState() => _pageThreeState();
}

class _pageThreeState extends State<pageThree> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 25, 20, 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //------BARRA DE PROGRESO
            Row(
              //-------------------------BARRA DE PROGRESO-------------
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Barra_A(
                  varColor: 1,
                ),
                Barra_A(
                  varColor: 1,
                ),
                Barra_A(
                  varColor: 1,
                ),
              ],
            ),
            SizedBox(
              height: 33.5,
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Bievenido",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width > 500
                        ? 60
                        : MediaQuery.of(context).size.width < 300
                            ? 30
                            : 40,
                    color: Color.fromRGBO(18, 71, 25, 01),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  "Podrás crear usuarios, activarlos, inactivarlos y editarlos:",
                  style: TextStyle(
                    //ESTO HACE EL TEXTO RESPONSIVE
                    fontSize: MediaQuery.of(context).size.width > 500
                        ? 30
                        : MediaQuery.of(context).size.width < 300
                            ? 11
                            : 15,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Center(
                  //child: Expanded(
                  child: SvgPicture.asset(
                    'assets/imageThree.svg',
                    height: 450,
                    width: 2100,
                    //fit: BoxFit.fitHeight,
                  ),
                  //),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BtnPrimaery(
                  textButton: "Omitir",
                  colorBox: Colors.white,
                  whitMedid: 188,
                  border: Border.all(width: 2),
                  onPressed: () => [],
                ),
                SizedBox(
                  width: 15,
                ),
                BtnPrimaery(
                  textButton: "Continuar",
                  colorBox: Color.fromRGBO(255, 182, 0, 1),
                  whitMedid: 188,
                  onPressed: () => [],
                ),
              ],
            )
          ],
        ),
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
    );
  }
}
