

import 'package:flutter/material.dart';

void main(){

  runApp(MyApp(),);


}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomePage(),
        appBar: AppBar(title: Text("With Enes Ç."),),

      ),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(


    );
  }
}

class Caylilar {
  String name="X";
  int yetenek=0;
  Caylilar murat= Caylilar(name: "murat",);
  var enes=Caylilar.puan(yetenek: 10);


  Caylilar({required this.name}){}
  Caylilar.puan({required int yetenek}){
    this.yetenek=yetenek;
  }



}


