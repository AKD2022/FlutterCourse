import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red.shade600,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceNumber () {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
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
                    changeDiceNumber();
                  });
                },
                child: Image.asset('images/dice$leftDiceNumber.png')
            ), // Shortcut for Image -> ImageAsset()),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    changeDiceNumber();
                  });
                },
                child: Image.asset('images/dice$rightDiceNumber.png')
            ),
          ),
        ],
      ),
    );
  }
}


