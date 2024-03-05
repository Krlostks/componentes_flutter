import 'package:componentes/screens/images_screen.dart';
import 'package:componentes/screens/infinit_list_screen.dart';
import 'package:componentes/screens/inputs_screen.dart';
import 'package:componentes/screens/notifications_screen.dart';
import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de flutter', style: TextStyle(color: Colors.black),),
            
      ) ,
      
        body:ListView(children: [
          const Divider(),
          ListTile(
            title: Text('Entradas',
            style: Theme.of(context).textTheme.headlineLarge,),
            subtitle: Text('Diferentes widgets para entradas de flutter', style:  Theme.of(context).textTheme.bodySmall),
            leading: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.app_settings_alt),),
            //trailing: const Icon(Icons.arrow_right),
            onTap:() {
              final ruta1 = MaterialPageRoute(builder: (context){
                return const InputsScreen();
              });
              Navigator.push(context, ruta1);
            },
          ),
          const Divider(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
           ListTile(
            leading: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.add_location),
            ),
            title: Text('Scrooooooll',
            style: Theme.of(context).textTheme.headlineLarge,),
            subtitle: Text('Scroll infinito', style:  Theme.of(context).textTheme.bodySmall,),
            trailing:  IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child:const Icon ( Icons.list),),
            onTap:() {
              final ruta2 = MaterialPageRoute(builder: (context){
                return const InfinitListScreen();
              });
              Navigator.push(context, ruta2);
            },
          ),
          const Divider(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
           ListTile(
            leading: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.notification_add),
            ),
            title: Text('Notificaciones',
            style: Theme.of(context).textTheme.headlineLarge,),
            subtitle:  Text('Notificaciones', style:  Theme.of(context).textTheme.bodySmall),
            //trailing:  IconTheme(
              //data: AppTheme.lightTheme.iconTheme,
              //child:const Icon ( Icons.notification_add),),

            onTap:() {
              final ruta3 = MaterialPageRoute(builder: (context){
                return const NotificationsScreen();
              });
              Navigator.push(context, ruta3);
            },
          ),
          ListTile(
            leading: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.image)),
              title: Text(
                'Imagenes',
                style: AppTheme.lightTheme.textTheme.headlineLarge,
                ),
                trailing:  IconTheme(
                data: AppTheme.lightTheme.iconTheme,
                child:const Icon ( Icons.arrow_circle_right),),
              onTap:() {
              final ruta4 = MaterialPageRoute(builder: (context){
                return const ImagesScreen();
              });
              Navigator.push(context, ruta4);
            },
          )
        ],
        ),
                bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          items:const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Color.fromARGB(0, 0, 0, 0),),
              label: "Home"
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.data_array_rounded, color: Color.fromARGB(0, 0, 0, 0),),
                label: "Datos",
                ),
            BottomNavigationBarItem(
              icon: Icon(Icons.exit_to_app, color: Color.fromARGB(0, 0, 0, 0),),
              label: "Salir",)
          ],
          unselectedLabelStyle: AppTheme.lightTheme.textTheme.bodyMedium,
          ),
      );
  }
}