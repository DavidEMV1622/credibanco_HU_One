import 'package:credibanco_hu_aca_1715/presentation/colors/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewElementsPage extends StatefulWidget {

  const ListViewElementsPage({super.key});

  @override
  State<ListViewElementsPage> createState() => _ListViewElementsPageState();
}

class _ListViewElementsPageState extends State<ListViewElementsPage> {

  //List<int> _number = [1, 2, 3, 4, 5, 6];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return Text('${[index]}', style: TextStyle(
          color: index <= 3? Colors.amber : Colors.black
          ),);
        //Text('Número ${numbers[index]}') 
      },
    );
  }
}