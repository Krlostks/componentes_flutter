import 'package:componentes/home_screen.dart';
import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});



  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(), 
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(0, 0, 0, 0),
        appBarTheme: const AppBarTheme(
          color : Colors.black38),
          textTheme: const TextTheme(
            headlineLarge: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20
            )
          )
      ),
    );
  }
}