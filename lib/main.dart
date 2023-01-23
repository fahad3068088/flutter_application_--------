// ignore_for_file: prefer_const_constructors, sort_child_properties_last

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
class Bb {
  String titl;
   String hh;
  Bb({required this.hh,required this.titl});
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
List nn=[
  Bb(titl:"aaaaaaaaa",hh:"false"),
  Bb(titl:"aaaaaaaaa",hh:"false")
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (() {}),
        backgroundColor: Colors.black,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 45, 54, 156),
        title: Center(
            child: Text(
          "الصعوبات اليومية",
          style: TextStyle(fontSize: 40, color: Colors.amberAccent),
        )),
      ),
      body: Column(
        children: [
          Card(
            // ignore: sort_child_properties_last
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // ignore: prefer_const_constructors
                  Text(
                    "الصعوبات اليومية",
                    style: TextStyle(fontSize: 40, color: Colors.amberAccent),
                    textDirection: TextDirection.rtl,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete),
                        color: Colors.red,
                        iconSize: 30,
                      ),
                      // ignore: prefer_const_constructors
                      SizedBox(width: 200),
                      Text(
                        "data",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.amberAccent,
                        ),
                        textDirection: TextDirection.rtl,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(11),
            ),
            color: Color.fromARGB(255, 65, 54, 135),
            margin: EdgeInsets.all(8),
          ),
        ],
      ),
    );
  }
}
