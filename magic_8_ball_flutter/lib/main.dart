import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  return runApp(
    MaterialApp (
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Text("Ask Me Anything"),
          backgroundColor: Colors.blueAccent.shade400,
        ),
        body: BallPage(),
      ),
    )
  );
}

class BallPage extends StatefulWidget {
  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int number = 1;

  void changeNumber() {
    number = Random().nextInt(4) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  changeNumber();
                });
              },
                child: Image.asset('images/ball$number.png')
            ),
          ),
        ],
      ),
    );
  }
}

