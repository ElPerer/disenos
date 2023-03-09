import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
   
  const CustomBottomNavigation({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      //La siguientes dos propiedad nos permiten ocultar los labels que están alojados en el BottomNavigationBarItem, para que solo nos muestre los iconos
      showSelectedLabels: false,
      showUnselectedLabels: false,
      //Esta propiedad es para darle color al label y al icono que tenemos en BottomNavigationBarItem, pero... solo el que tenemos seleccionado
      selectedItemColor: Colors.pink,
      //La siguiente propiedad nos permite cambiar el color de fondo del BottomNavigationBar
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      //La siguiente propiedad nos permite cambiar o colocar un color a los elementos del BottomNavigationBar que no estén seleccionados
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      //La propiedad currentIndex permite marcar o seleccionar la opción que indiquemos y que corresponda su index es decir... 0 es el primer icono
      currentIndex: 0,
      //La propiedad items en los BottomNavigationBar son obligatorios y tienen que ser mayor a 1
      items: const  [
        //El WIDGET BottomNavigationBarItem tiene de forma obligatoria el icono
        BottomNavigationBarItem(
          label: 'Calendario',
          icon: Icon(Icons.calendar_month_sharp),
        ),
        BottomNavigationBarItem(
          label: 'Gráfica',
          icon: Icon(Icons.pie_chart_outline_outlined),
        ),
        BottomNavigationBarItem(
          label: 'Usuarios',
          icon: Icon(Icons.supervised_user_circle_outlined),
        ),
      ]
    );
  }
}