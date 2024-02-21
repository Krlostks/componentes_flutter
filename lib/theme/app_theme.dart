import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  static const primarycolor = Color.fromARGB(255, 105, 105, 105);
  static const backColor=Color.fromARGB(0, 255, 36, 36);
  static const iconos = Colors.blueAccent;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor ,
    appBarTheme: const AppBarTheme(color : primarycolor),
    textTheme:  TextTheme(
             headlineLarge: GoogleFonts.roboto(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 25,
              decoration: TextDecoration.underline,
              decorationColor: const Color.fromARGB(255, 192, 192, 192),
              decorationThickness: 1.0,
              fontStyle: FontStyle.normal,
            ),
            bodySmall:  GoogleFonts.roboto(
              color:const Color.fromARGB(255, 96, 96, 96),
              fontWeight: FontWeight.w800,
              fontSize: 13,
              decoration: TextDecoration.underline,
              decorationColor: const Color.fromARGB(255, 255, 255, 255),
              decorationThickness: 1.0,
              fontStyle: FontStyle.normal,
            )
          ))
;}