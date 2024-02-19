import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:  Text("Componentes de flutter" ,
            style: Theme.of(context).textTheme.headlineLarge,),
    
      ) ,
      
        body:ListView(children: [
          ListTile(
            title: Text('Holaaaaaaaaa',
            style: Theme.of(context).textTheme.headlineLarge,),
            subtitle: const Text('Diferentes widgets para entradas de flutter'),
            leading: const Icon(Icons.app_settings_alt, color: Colors.indigo,),
            trailing: const Icon(Icons.arrow_right),
          ),
          const Divider(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
           ListTile(
            leading: const Icon(Icons.add_location, color: Colors.indigo),
            title: Text('Listview.biulder',
            style: Theme.of(context).textTheme.headlineLarge,),
            subtitle: const Text('Scroll infinito'),
            trailing: const Icon(Icons.list_alt_rounded),
          ),
          const Divider(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
           ListTile(
            leading: const Icon(Icons.admin_panel_settings_rounded, color: Colors.indigo,),
            title: Text('Notificaciones',
            style: Theme.of(context).textTheme.headlineLarge,),
            subtitle: const Text('Notificaciones'),
            trailing: const Icon(Icons.notification_add),
          )
        ],
        ),
      );
  }
}