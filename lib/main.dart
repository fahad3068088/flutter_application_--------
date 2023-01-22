import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';

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

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  List cc = [500, 100, 400];
  List nn = ["ali", "fahad", 'mama'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 45, 54, 156),
        title: Center(
            child: Text(
          "الصعوبات اليومية",
          style: TextStyle(fontSize: 40, color: Colors.amberAccent),
        )),
      ),
      body: Card(
        child: Text(
          "الصعوبات اليومية",
          style: TextStyle(fontSize: 40, color: Colors.amberAccent),
        ),
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(28.0),
        ),
        color: Color.fromARGB(255, 65, 54, 135),
        margin: EdgeInsets.all(30),
      ),
    );
  }
}
