import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  static const primarycolor = Color.fromARGB(255, 148, 148, 148);
  static const  backColor =Color.fromRGBO(224, 224, 224, 1);
  static const iconos = Color.fromARGB(255, 0, 0, 0);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      scaffoldBackgroundColor: backColor,
      appBarTheme:  AppBarTheme(color : primarycolor,
        titleTextStyle: GoogleFonts.roboto(
        color: primarycolor,
        fontSize: 28.5,
        fontWeight: FontWeight.bold
      )
    ),
    iconTheme: const IconThemeData(
      color: Color.fromARGB(255, 92, 96, 95),
      size: 35.0
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(  
        backgroundColor: const MaterialStatePropertyAll(Colors.grey),
        textStyle: MaterialStateProperty.all(GoogleFonts.roboto(color: const Color.fromARGB(255, 255, 255, 255))
        ),
        
      
      )
    ),
    textTheme:  TextTheme(
             headlineLarge: GoogleFonts.roboto(
              color: const Color.fromARGB(255, 0, 0, 0),
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