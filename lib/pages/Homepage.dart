import 'package:flutter/material.dart';
import 'package:lessgo/widgets/drawer.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);
  final int age = 5;
  final String name = "groot";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(75.0),
          child: Text(
            "Catalog App",
          ),
        ),
      ),
      body: Center(
        child: Container(
          child: Text(
            'I am $name and my fucking age is $age',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
