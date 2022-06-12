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
        title: Text("My app"),
        backgroundColor: Color.fromRGBO(108, 100, 251, 0.95),
      ),
      body: Center(
        child: Container(
          child: Text('I am $name and my fucking age is $age'),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
