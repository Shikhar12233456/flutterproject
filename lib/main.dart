import 'package:first_flutter_project/screens/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
          child: Center(
        child: Container(
          child: Text("welcome to screen"),
        ),
      )),
      routes: {"/": (context) => signup()},
    );
  }
}
