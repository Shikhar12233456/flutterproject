import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
        child: Column(
      children: [
        Image.asset('assets/images/Login_welcome.png',fit: BoxFit.scaleDown,),
        const SizedBox(
          height: 20.0,
        ),
        const Text(
          "Welcome To App",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:16.0,horizontal: 32.0),
          child: Column(
            children: [
              TextFormField(
            // ignore: prefer_const_constructors
            decoration: InputDecoration(
              hintText: "Enter User name",
              labelText: "Username",
            ),
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

          ElevatedButton(
            onPressed: (){}, 
            style: TextButton.styleFrom(),
            child: const Text("Login")
            )
          ],
          ),
        )
      ],
    ));
  }
}
