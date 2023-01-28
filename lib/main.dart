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

  nnNwoApp() {
    setState(() {
      nn.add(Bb(hh: tt.text, titl: ss.text));
    });
  }

  final ss = TextEditingController();
  final tt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (BuildContext context) {
                return Container(
                  color: Color.fromARGB(255, 228, 234, 235),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      TextField(
                        controller: ss,
                      ),
                      SizedBox(),
                      TextField(controller: tt),
                      SizedBox(),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            nnNwoApp();
                          },
                          child: Text("اضغط"))
                    ],
                  ),
                );
              });
        }),
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
