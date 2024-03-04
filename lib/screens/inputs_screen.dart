import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  bool valueSwitch = false;
  double valueSlider = 0;
  int selectedRadioOption = 0;
  int selectedIndex = 0;

  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entradas', style: TextStyle(color: Colors.black),)),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
            Text('Inputs/Entradas',style:AppTheme.lightTheme.textTheme.headlineMedium),
            entradaTexto(),
            entradaSwitch(),
            entradasSlider(),
            entradasRadio(),
            Text('Que usas para correr tu apps de flutter',
            style: AppTheme.lightTheme.textTheme.bodyMedium,),
            entradasCheck(),
            const ElevatedButton(
             onPressed: null,
             child: Text('Guardar',), 
             )
        ],
      ),
      ), bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
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

  TextField entradaTexto() {
    return TextField(
            style: AppTheme.lightTheme.textTheme.headlineMedium,
            decoration: InputDecoration(
              border: const UnderlineInputBorder(),
              labelText: 'Ecribe tu nombre',
              labelStyle: AppTheme.lightTheme.textTheme.headlineMedium
            ),
          );
  }
  Row entradaSwitch(){
    return Row(
      children: <Widget>[
        const FlutterLogo(),
        Text(
          '¿Te gusta Flutter?',
          style: AppTheme.lightTheme.textTheme.headlineMedium,
        ),
        const SizedBox(
          width: 25.0,
        ),
        Switch(
          value:valueSwitch,
          onChanged: (value){
            setState(() {
            valueSwitch = value;
            print('estado del switch: $valueSwitch');
            });
          }, 
        )


      ],
    );
  }

  Column entradasSlider(){
    return Column(
      children: [
      Text('¿Que tanto te gusta flutter?',
      style: AppTheme.lightTheme.textTheme.headlineMedium,),
      Slider(min:0.0, 
      max:10.0,
      value: valueSlider,
      activeColor: AppTheme.primarycolor,
      thumbColor: AppTheme.primarycolor,
      divisions: 10,
      label: '${valueSlider.round()}',
       onChanged:(value){
        setState(() {
          valueSlider = value;
          print(valueSlider);
        });
      })

      ],
    );
  }

  Column entradasRadio(){
    return Column(
      children: [
        Text(
          'Que prefieres usar para el desarrollo movil', 
          style: AppTheme.lightTheme.textTheme.headlineMedium),
          ListTile(
            title: Text('Kotlin',
            style: AppTheme.lightTheme.textTheme.headlineMedium,
            ),
            leading: Transform.scale(
              scale: 1.5,
              child: Radio(
              value:1 ,
              groupValue: selectedRadioOption,
              onChanged: (value){
                setState((){
                  selectedRadioOption = value!;
                  print('Seleccionaste Kotlin');
                });
              },),
            ),
          ),
          ListTile(
            title: Text('Flutter',
            style: AppTheme.lightTheme.textTheme.headlineMedium,
            ),
            leading: Transform.scale(
              scale: 1.5,
              child: Radio(
              value:2,
              groupValue: selectedRadioOption,
              onChanged: (value){
                setState((){
                  selectedRadioOption = value!;
                  print('Seleccionaste Flutter');
                });
              },),
            ),
          )
      ],
    );
  }

Row entradasCheck(){
  return Row(
    children: [
      Text(
        'Navegador',
        style: AppTheme.lightTheme.textTheme.headlineMedium,
      ),
      Checkbox(value: isChecked1, onChanged: (value){
        setState(() {
          isChecked1= value!;
          print('valor de navegador: $isChecked1');
        });
      }),
      Text(
        'Emulador',
        style: AppTheme.lightTheme.textTheme.headlineMedium,
      ),
      Checkbox(value: isChecked2, onChanged: (value){
        setState(() {
          isChecked2= value!;
          print('valor de emulador: $isChecked2');
        });
      }),
      Text(
        'Smartphone',
        style: AppTheme.lightTheme.textTheme.headlineMedium,
      ),
      Checkbox(value: isChecked3, onChanged: (value){
        setState(() {
          isChecked3= value!;
          print('valor de Smartphone: $isChecked3');
        });
      })
    ],
  );
}
}