// ignore_for_file: sort_child_properties_last

import 'package:first_flutter_project/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changebutton = false;
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/Login_welcome.png',
                fit: BoxFit.scaleDown,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome $name to App",
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        hintText: "Enter User name",
                        labelText: "Username",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      obscureText: true,
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),

                    InkWell(
                      onTap: () {
                        setState(() {
                          changebutton = true;
                        });
                        Future.delayed(const Duration(seconds: 1));
                        Navigator.pushNamed(context, Myroutes.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),

                        width: changebutton ? 50 : 100,
                        height: 50,
                        alignment: Alignment.center,
                        // ignore: prefer_const_constructors
                        child: changebutton
                            ? const Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : const Text(
                                "Login",
                                // ignore: prefer_const_constructors
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          shape: changebutton
                              ? BoxShape.circle
                              : BoxShape.rectangle,
                        ),
                      ),
                    ),

                    // ElevatedButton(
                    //     onPressed: () {
                    //       Navigator.pushNamed(context, Myroutes.homeRoute);
                    //     },
                    //     style: TextButton.styleFrom(
                    //         minimumSize: const Size(100, 50)),
                    //     child: const Text("Login"))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
