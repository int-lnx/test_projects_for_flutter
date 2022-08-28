

import 'package:flutter/material.dart';

void main(){

  runApp(MyApp(),);


}

//
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomePage(),
        appBar: AppBar(title: Text("With E. Ç."),),

      ),
    );
  }
}


class HomePage extends StatelessWidget {

  Caylilar murat= Caylilar(name: "murat",);
  var enes=Caylilar.puan(yetenek: 10);


   HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(murat.call_name(),),
        ],
      ),

    );
  }
}

class Caylilar {
  String name="X";
  int yetenek=0;
  Caylilar({required this.name}){}
  Caylilar.puan({required this.yetenek}){
    this.yetenek=yetenek;
  }

  String call_name(){
    return name;
  }
  int call_yetenek(){
    return yetenek;
  }


printle (String name, int yetenek){

    if(name=="murat"){
    return name;
    }
    else {
      return Caylilar.puan(yetenek: yetenek);
    }
}

}
