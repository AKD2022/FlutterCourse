import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text("I am Poor", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blueGrey,
        ),
        body: const Center(
          child: Image(
            image: NetworkImage('https://static.thenounproject.com/png/213892-200.png'),
          ),
        )
      ),
    ),
  );
}
