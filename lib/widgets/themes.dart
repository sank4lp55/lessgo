import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData get lightTheme => ThemeData(
        primarySwatch: Colors.deepOrange,
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0.0,
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 22,
          ),
        ),
      );

  static ThemeData get darkTheme => ThemeData(brightness: Brightness.dark);
}
