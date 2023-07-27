import 'package:flutter/material.dart';

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
              mainAxisAlignment: MainAxisAlignment.center,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Bievenido",
                  style: TextStyle(
                    fontSize: 40,
                    color: Color.fromRGBO(18, 71, 25, 01),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                    "Además de gestionar tus transacciones, también podrás integrara tu equipo de trabajo")
              ],
            )
          ],
        ),
      ),
    );
  }
}
