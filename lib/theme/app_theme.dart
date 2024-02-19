import 'package:flutter/material.dart';

class AppTheme{
  static const primarycolor = Color.fromARGB(255, 125, 125, 125);
  static const backColor=Color.fromARGB(0, 169, 167, 167);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor ,
    appBarTheme: const AppBarTheme(color : backColor),
    textTheme: const TextTheme(
             headlineLarge: TextStyle(
              color: primarycolor,
              fontWeight: FontWeight.bold,
              fontSize: 20
            )
          ))
;}