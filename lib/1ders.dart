import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Appbar",
          ),
        ),
        body: Liste_Kaydir(),
      ),
    );
  }
}

class MyBody extends StatefulWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  State<MyBody> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Image.asset('assets/images/agac.jpg'),

      ),

    );
  }
}


class Liste_Kaydir extends StatelessWidget {

  List<Ogrenci> tum_ogrenciler= List<Ogrenci>.generate(100, (index) => Ogrenci(id: index, name: "murat$index", surname: "cayli$index"),);


  Liste_Kaydir({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    /*
    List<Widget> list= [];

    for(int index = 0; index< tum_ogrenciler.length; index++ ) {
      list.add(Card(
        color: Colors.amber,
        child: Text(
          "id: ${tum_ogrenciler[index].id.toString()} "
              "name: ${tum_ogrenciler[index].name.toString()} "
              "surname: ${tum_ogrenciler[index].surname.toString()}" ,),),
      );
    }

    return ListView(
      children: list,
    ); */

    int a = -1000000000 ;

    int b= a* (a+1);

    
    return ListView.separated(

      itemCount: tum_ogrenciler.length,
      separatorBuilder: (BuildContext context, int index) {
        return Divider(
          thickness:  index % 15 == 0 ?200 : 0,
          color: index % 5 == 0 ? Colors.red : Colors.yellow,
        );
      },
      itemBuilder: (BuildContext context, int index) {
        return  Card(
            color: Colors.amber,
            child: Text("id: ${tum_ogrenciler[index].id.toString()} name: ${tum_ogrenciler[index].name.toString()} surname: ${tum_ogrenciler[index].surname.toString()}" ,),);

      },
    );
  }
}


class Ogrenci {
  String name ="Ogrenci";
  String surname="Ogrenci";
  int id= 0;

  Ogrenci({required this.name,required this.surname, required this.id}){}

  }

