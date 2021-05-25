import 'package:flutter/material.dart';

class Themes {
  ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.blue,
    iconTheme: IconThemeData(color: Colors.blue),
    canvasColor: Colors.blue,
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.black,
    ),
    // textTheme: TextTheme(
    //     headline1: TextStyle(color: Colors.black),
    //     bodyText1: TextStyle(color: Colors.black))
    // appBarTheme: AppBarTheme(
    //   brightness: Brightness.light,
    // )
  );

  //*********** DARK */
  ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.black,
    inputDecorationTheme: InputDecorationTheme(
        labelStyle: TextStyle(color: Colors.white), fillColor: Colors.white),
    brightness: Brightness.dark,
    iconTheme: IconThemeData(color: Colors.white),
  );
}
