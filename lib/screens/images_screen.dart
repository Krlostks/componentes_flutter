import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Imagenes', style: AppTheme.lightTheme.textTheme.headlineLarge),
      ),
      body: ListView(
        children:[
          imageCard(),

        ],)
    );
  }

  Card imageCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: const SizedBox(
            width: 300,
            height: 300,
            child: Image(
              image:AssetImage('assets/img/Max.jpg'),
              )
          ),

    );
  }
}