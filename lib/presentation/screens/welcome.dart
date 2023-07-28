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
          Container(
            child: pageOne(),
          ),
          //------------------Conteiner #2-----------------
          Container(
              child: Column(
            children: [],
          ))
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
