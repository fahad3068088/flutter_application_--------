// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

import 'fahad/ali.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyWidget(),
    );
  }
}

class Bb {
  String titl;
  String hh;
  Bb({required this.hh, required this.titl});
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  List nn = [
    Bb(titl: "aaaaaaaaa", hh: "false"),
    Bb(titl: "bbbbbbbbbbbb", hh: "false")
  ];
  delet(e) {
    setState(() {
      nn.remove(e);
    });
  }
  ali(){
    setState(() {
      nn.add(Bb(hh: "فهد", titl: "عسى ربي يوفقك"));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (() {ali();}),
        backgroundColor: Colors.black,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 45, 54, 156),
        // ignore: prefer_const_constructors
        title: Center(
            child: Text(
          "الصعوبات اليومية",
          style: TextStyle(fontSize: 40, color: Colors.amberAccent),
        )),
      ),
      body: SingleChildScrollView(
        child: Column(children: nn.map((e) => dd(delet: delet, e: e)).toList()),
      ),
    );
  }
}
