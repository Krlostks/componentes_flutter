import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("componentes de flutter"),
        
      ) ,
      
        body:ListView(children: [
          ListTile(
            title: Text('Holaaaaaaaaa',
            style: Theme.of(context).textTheme.headlineLarge,),
            subtitle: const Text('Adios'),
            leading: const Icon(Icons.app_settings_alt, color: Colors.indigo,),
            trailing: const Icon(Icons.arrow_right),
          ),
          const Divider(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          const ListTile(
            leading: Icon(Icons.add_location, color: Colors.indigo),
            title: Text('Holaaaaaaaaa'),
            subtitle: Text('Adios'),
            trailing: Icon(Icons.arrow_right),
          ),
          const Divider(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          const ListTile(
            leading: Icon(Icons.admin_panel_settings_rounded, color: Colors.indigo,),
            title: Text('Holaaaaaaaaa'),
            subtitle: Text('Adios'),
            trailing: Icon(Icons.arrow_right),
          )
        ],
        ),
      );
  }
}