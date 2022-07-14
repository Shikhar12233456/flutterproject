import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Flutter App"),
      ),
      body: Center(
        child: Container(
          child: const Text("Hello Myself Shikhar: "),
        ),
      ),
      drawer: Drawer(child: Column(
        children: const [
          Text("Shikhar"),
          SizedBox(
            height: 20.0,
          ),
          Text("shikharawasthi963@gmail.com"),
        ],
      )),
    );
  }
}
