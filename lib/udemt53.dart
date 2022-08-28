

import 'dart:math';

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




   HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [

        ],
      ),

    );
  }
}

class Ogrenciler {
  List<Ogrenci> tum_ogrenciler = List.filled(100, Ogrenci("X",0,0));
  random_list(){

    for(int i=0; i<100; i++){
      tum_ogrenciler[i].no=i;
      tum_ogrenciler[i].name="X$i";
      tum_ogrenciler[i].no=Random().nextInt(900)+100;

    }

  }



  }


class Ogrenci {
  String name="X";
  int id=0;
  int no=0;

  Ogrenci(this.name, this.id, this.no);

  @override
  String toString() {
    // TODO: implement toString
    return "ogrenci id: $id ve ogrneci adı: $name";
  }

}
