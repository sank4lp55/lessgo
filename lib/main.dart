import 'package:flutter/material.dart';
import 'package:lessgo/pages/Homepage.dart';
import 'package:lessgo/pages/Loginpage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lessgo/utils/routes.dart';
import 'package:lessgo/widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      initialRoute: MyRoutes.homeRoute,
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => Loginpage(),
        MyRoutes.homeRoute: (context) => Homepage()
      },
    );
  }
}
