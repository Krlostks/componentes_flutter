import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  static const primarycolor = Color.fromARGB(255, 105, 105, 105);
  static const backColor=Color.fromARGB(0, 255, 36, 36);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor ,
    appBarTheme: const AppBarTheme(color : primarycolor),
    textTheme:  TextTheme(
             headlineLarge: GoogleFonts.roboto(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 25,
              decoration: TextDecoration.underline,
              decorationColor: Color.fromARGB(255, 192, 192, 192),
              decorationThickness: 1.0,
              fontStyle: FontStyle.normal,
            )
            // bodySmall: 
          ))
;}