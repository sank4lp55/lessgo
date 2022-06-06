import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login page"),
      ),
      body: Center(
        child: Container(
          child: Text(
            'This is login page',
            style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold, color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
