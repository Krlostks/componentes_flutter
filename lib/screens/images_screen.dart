import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

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
          imageWeb(),

        ],)
    );
  }

  Card imageCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      margin: const EdgeInsets.all(20),
      elevation: 10,
          child:  ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: 
            Column(

              children: [
                const SizedBox(
                  width: 100,
                  height: 100,
                  child: Image(
                    image:AssetImage('assets/img/Max.jpg'),
                    ),
                ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text('Un Max steel',style: AppTheme.lightTheme.textTheme.headlineLarge,),
                  )
              ],
            ),)
          );


  }
  Stack imageWeb(){
    return  Stack(
      children: <Widget>[
        const SizedBox(
          child:  Center(
            child: SizedBox(
              height: 100,
              width: 100,
              child: CircularProgressIndicator(),
            ),
          ),
        ),
        Center(
          child: SizedBox(
            height: 300,
            width: 300,
            child: FadeInImage.memoryNetwork(placeholder: kTransparentImage, image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Canis_lupus_265b.jpg/800px-Canis_lupus_265b.jpg')
          //  Image.network(),            Para mostrar una imagen de la web
              ),
        )
        
      ]
    );
  }
}