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
      body: Column(
        children: [
          Card(
            child: Container(
          
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "الصعوبات اليومية",
                    style: TextStyle(fontSize: 40, color: Colors.amberAccent),
                    textDirection: TextDirection.rtl,),
                  Row(
                    children: [
                      Icon(Icons.delete),
                      SizedBox(width: 200),
                      Text("data",
                          style: TextStyle(fontSize: 40, color: Colors.amberAccent,),
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
       
       Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "الصعوبات اليومية",
              style: TextStyle(fontSize: 40, color: Colors.amberAccent),
            ),
            Text("data",
                style: TextStyle(fontSize: 40, color: Colors.amberAccent,))
          ],
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
