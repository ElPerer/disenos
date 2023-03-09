
import 'package:disenos/widgets/background.dart';
import 'package:disenos/widgets/custom_bottom_navigation.dart';
import 'package:flutter/material.dart';

import '../widgets/card_table.dart';
import '../widgets/page_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: const <Widget>[
          Background(),
          _HomeBody(),
        ],
      ),

      //Esta propiedad de bottomNavigationBar nos permite colocar la barra de navegación en la parte de abajo de nuestro dispositivo movil
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Con el WIDGET SingleChildScrollView nos ayuda si el WIDGET hijo es más grande de todas las dimenciones nos permite hacer scroll en la pantalla y así evitar errores
    return SingleChildScrollView(
      child: Column(
        children: const <Widget>[
          PageTitle(),
          CardTable()
        ],
      ),
    );
  }
}