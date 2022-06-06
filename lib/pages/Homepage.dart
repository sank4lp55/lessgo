import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);
  final int age = 5;
  final String name = "groot";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My app"),
      ),
      body: Center(
        child: Container( 
          child: Text('I am $name and my fucking age is $age'),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
