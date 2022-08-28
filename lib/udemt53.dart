

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

  random_list(){
    print("x");

  }



  }


class Ogrenci {
  String name="X";
  int id=0;

  Ogrenci(this.name, this.id);

  @override
  String toString() {
    // TODO: implement toString
    return "ogrenci id: $id ve ogrneci adı: $name";
  }

}
