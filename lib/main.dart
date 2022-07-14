import 'package:first_flutter_project/screens/LoginPage.dart';
import 'package:first_flutter_project/utils/routes.dart';
import 'package:first_flutter_project/widgets/themes.dart';
import 'package:flutter/cupertino.dart';
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
      theme:  MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => Homepage(),
        Myroutes.homeRoute:(context) => Homepage(),
        Myroutes.loginRoute: (context) => LoginPage()
      },
    );
  }
}
