import 'package:flutter/material.dart';

import 'screens/Homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  int days = 30;
  String st = "Shikhar made you ";
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}
