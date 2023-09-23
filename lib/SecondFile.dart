

import 'package:flutter/material.dart';

import 'main.dart';


class SecondFile extends StatelessWidget{

  late final String text2 ;
   late final String text3;

  SecondFile({required this.text2 , required this.text3});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("USER DATA"),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(text2),
            Text(text3)

          ],
        ),

      ),
    );
  }

}
