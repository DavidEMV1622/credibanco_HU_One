import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class pageRLPV extends StatefulWidget {
  final String title;
  final String textParrafo;
  final String? subTitle;
  final String? directionImage;
  final double widthImage;

  const pageRLPV(
      {super.key,
      required this.title,
      required this.textParrafo,
      this.subTitle,
      this.directionImage,
      required this.widthImage});

  @override
  State<pageRLPV> createState() => _pageRLPVState();
}

class _pageRLPVState extends State<pageRLPV> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 25, 20, 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 23,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
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
                  widget.textParrafo,
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
                if (widget.subTitle != null)
                  Text(
                    widget.subTitle!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                SizedBox(
                  height: 38,
                ),
                if (widget.directionImage != null)
                  Center(
                    child: Expanded(
                      child: SvgPicture.asset(
                        widget.directionImage!,
                        width: widget.widthImage,
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
