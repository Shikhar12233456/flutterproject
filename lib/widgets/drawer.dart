import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  String imageUrl = "assets/images/myImage.png";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          DrawerHeader(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Shikhar"),
                accountEmail: Text("shikharawasthi963@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/myImage.png"),
                ),
              )),
              ListTile(
                leading: Icon(CupertinoIcons.home),
                title: Text("Home"),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.mail),
                title: Text("Mail"),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.search),
                title: Text("Search"),
              )
        ],
      ),
    );
  }
}
