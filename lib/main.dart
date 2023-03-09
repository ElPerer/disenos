import 'package:disenos/screens/basic_design.dart';
import 'package:disenos/screens/home_screen.dart';
import 'package:disenos/screens/scroll_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){

    //La siguiente línea es una clase que nos permite cambiar el color de los iconos de la barra de arriba de nuestro dispositivo movil
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MaterialApp',
      theme: ThemeData.dark(),
      initialRoute: 'home_screen',
      routes: {
        'basic_design' : (_) => const BasicDesignScreen(),
        'scroll_screen': (_) => const ScrollDesignScreen(),
        'home_screen'  : (_) => const HomeScreen()
      },
    );
  }
}

/* class _TempHomeScreen extends StatelessWidget{
  const _TempHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Text('Primer Mensaje'),
        Text('Segundo Mensaje')
      ],
    );
  }
} */