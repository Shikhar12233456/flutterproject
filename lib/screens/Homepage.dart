import 'package:first_flutter_project/widgets/drawer.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Flutter App"),
      ),
      body: const Center(
        child: Text("Hello Myself Shikhar: "),
      ),
      drawer: MyDrawer(),
    );
  }
}
