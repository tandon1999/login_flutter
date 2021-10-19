// ignore_for_file: unused_local_variable

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:loginapp/screens/home_screen.dart';

TextStyle myStyle = const TextStyle(fontSize: 25, fontWeight: FontWeight.bold);

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String username;
  late String password;
  @override
  Widget build(BuildContext context) {
    final usernameField = TextField(
      onChanged: (val) {
        setState(() {
          username = val;
        });
      },
      style: myStyle,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          hintText: "Username",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    // ignore: non_constant_identifier_names
    final PasswordField = TextField(
      onChanged: (val) {
        setState(() {
          password = val;
        });
      },
      obscureText: true,
      style: myStyle,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          hintText: "Password",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final myLoginButton = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.green,
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(20),
          onPressed: () {
            if (username == "suman" && password == "password!1999") {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomeScreen(username)));
              print("login is successfull !!");
            } else {
              print("login detail denied !");
            }
          },
          child: const Text(
            'Login',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ));

    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.supervised_user_circle,
                    size: 100,
                  ),
                  const SizedBox(
                    height: 180,
                  ),
                  usernameField,
                  const SizedBox(
                    height: 20,
                  ),
                  PasswordField,
                  const SizedBox(
                    height: 10,
                  ),
                  myLoginButton,
                  const SizedBox(
                    height: 100,
                  ),
                  const Text(
                    'Made@tandan',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
