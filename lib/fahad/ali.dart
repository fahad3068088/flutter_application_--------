import 'package:flutter/material.dart';

import '../main.dart';

class dd extends StatelessWidget {
  
  final Bb e;
  final Function delet;
  const dd({super.key, required this.delet, required this.e});
  @override
  Widget build(BuildContext context) {
    return Card(
      // ignore: sort_child_properties_last
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // ignore: prefer_const_constructors
            Text(
              e.titl,
              style: TextStyle(fontSize: 40, color: Colors.amberAccent),
              textDirection: TextDirection.rtl,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    delet(e);
                  },
                  icon: Icon(Icons.delete),
                  color: Colors.red,
                  iconSize: 30,
                ),
                // ignore: prefer_const_constructors
                SizedBox(width: 200),
                Text(
                  e.hh,
                  // ignore: prefer_const_constructors
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
    );
  }
}
