import 'package:flutter/material.dart';
import 'general_container.dart';

void main() {
  runApp(
    const  MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.deepOrangeAccent,
          body: GeneralContainer(
          Color.fromARGB(255, 138, 37, 30),
          Color.fromARGB(255, 51, 50, 50))),
    ),
  );
}
