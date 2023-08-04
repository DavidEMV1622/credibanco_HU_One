import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final int cantidadBarr = 3;
    return /* 
    Container(
      child: ListView.separated(
        itemCount: 25,
        separatorBuilder: (BuildContext context, int index) => 
        const Divider(
          color: Colors.amber, thickness: 5,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Text('item $index');
        },
      ),
    ); */
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        // decoration: const BoxDecoration(
        //   color: Colors.ambe,
        // ),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: cantidadBarr,
          separatorBuilder: (context, index) => 
            SizedBox(
              width: 20,
            )
          ,
          itemBuilder: (BuildContext context, index) => 
            Container(
              height: 4,
              width: (MediaQuery.of(context).size.width - ((cantidadBarr - 1) * 30)) / cantidadBarr,
              //margin: EdgeInsets.only(right: index == cantidadBarr - 1? 0 : 20,),
              decoration: BoxDecoration(
                color: 2 <= index? Colors.black38 : Colors.green,
                borderRadius: BorderRadius.circular(20),
              ),
    
            ),
        ),
      ),
    );

/*
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        // decoration: const BoxDecoration(
        //   color: Colors.ambe,
        // ),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: cantidadBarr,
          itemBuilder: (BuildContext context, index) => 
            Container(
              height: 4,
              width: (MediaQuery.of(context).size.width - ((cantidadBarr - 1) * 30)) / cantidadBarr,
              margin: EdgeInsets.only(right: index == cantidadBarr - 1? 0 : 20,),
              decoration: BoxDecoration(
                color: 2 <= index? Colors.black38 : Colors.green,
                borderRadius: BorderRadius.circular(20),
              ),
    
            ),
        ),
      ),
    ); */ 
  }
}