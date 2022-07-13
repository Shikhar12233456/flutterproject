import 'package:first_flutter_project/screens/LoginPage.dart';
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
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      routes: {
        "/": (context) => LoginPage(),
        "/Login": (context) => LoginPage()
      },
    );
  }
}
