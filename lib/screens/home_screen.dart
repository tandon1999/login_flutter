import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String username;
  // ignore: use_key_in_widget_constructors
  const HomeScreen(this.username);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Home Page",
          style: TextStyle(),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              "Welcome to home page  " + "Mr." + username,
              style: const TextStyle(fontSize: 25),
            ),
          ),
          const SizedBox(
            height: 500,
          ),
          const Text(
            "Made@tandan",
            style: TextStyle(color: Colors.black, fontSize: 20),
          )
        ],
      ),
    );
  }
}
