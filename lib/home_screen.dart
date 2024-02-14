import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("componentes de flutter"),
        
      ) ,
        body:ListView(children:const [
          ListTile(
            title: Text('Holaaaaaaaaa', 
                    style: 
                    TextStyle(
                      color: Color.fromARGB(255, 1, 143, 32)
                    )),
            subtitle: Text('Adios'),
            leading: Icon(Icons.app_settings_alt, color: Colors.indigo,),
            trailing: Icon(Icons.arrow_right),
          ),
          Divider(
            color: Colors.pinkAccent,
          ),
          ListTile(
            leading: Icon(Icons.add_location, color: Colors.indigo),
            title: Text('Holaaaaaaaaa', 
                    style: 
                    TextStyle(
                      color: Color.fromARGB(255, 1, 143, 32)
                    )),
            subtitle: Text('Adios'),
            trailing: Icon(Icons.arrow_right),
          ),
          Divider(
            color: Colors.red,
          ),
          ListTile(
            leading: Icon(Icons.admin_panel_settings_rounded, color: Colors.indigo,),
            title: Text('Holaaaaaaaaa', 
                    style: 
                    TextStyle(
                      color: Color.fromARGB(255, 1, 143, 32)
                    )),
            subtitle: Text('Adios'),
            trailing: Icon(Icons.arrow_right),
          )
        ],
        ),
      );
  }
}