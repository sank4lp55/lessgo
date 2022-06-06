import 'package:flutter/material.dart';
import 'package:lessgo/pages/Homepage.dart';
import 'package:lessgo/pages/Loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {"/": (context) => Loginpage(), "/home": (context) => Homepage()},
    );
  }
}
