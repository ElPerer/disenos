import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //El Table es un WIDGET propio que funciona como colección de Rows
    return Table(
      children: const <TableRow>[
        //El TableRow nos sirve para poder poner un Row o más dentro de una tabla, si agergamos más TableRow, esto se acompla y también si agregamos más hijos dentro del TableRow
        TableRow(children: <Widget>[
          //Estos Hijos funcionarían como COLUMNAS dentro de los hijos de un TableRow, la condición es que todos los TableRow tienen que tener los mismos hijos
          //Tambien cabe mencionar que es responsivo, es decir si tengo 3 hijos, los 3 tienen las mismas dimensiones y si tengo 2 pasa lo mismo y no tendrán ninguna separación
          _SingleCard(
              icon: Icons.folder, color: Colors.blue, text: 'Documentos'),
          _SingleCard(
              icon: Icons.car_rental, color: Colors.purple, text: 'El Chivano'),
        ]),
        TableRow(children: <Widget>[
          //Estos Hijos funcionarían como COLUMNAS dentro de los hijos de un TableRow, la condición es que todos los TableRow tienen que tener los mismos hijos
          //Tambien cabe mencionar que es responsivo, es decir si tengo 3 hijos, los 3 tienen las mismas dimensiones y si tengo 2 pasa lo mismo y no tendrán ninguna separación
          _SingleCard(
              icon: Icons.shopping_bag,
              color: Colors.pink,
              text: 'Fletes Cihua'),
          _SingleCard(
              icon: Icons.monetization_on,
              color: Colors.deepOrangeAccent,
              text: 'Millones familia'),
        ]),
        TableRow(children: <Widget>[
          //Estos Hijos funcionarían como COLUMNAS dentro de los hijos de un TableRow, la condición es que todos los TableRow tienen que tener los mismos hijos
          //Tambien cabe mencionar que es responsivo, es decir si tengo 3 hijos, los 3 tienen las mismas dimensiones y si tengo 2 pasa lo mismo y no tendrán ninguna separación
          _SingleCard(
              icon: Icons.local_car_wash,
              color: Colors.deepPurpleAccent,
              text: 'Trabajo familia'),
          _SingleCard(
              icon: Icons.grid_4x4_rounded,
              color: Colors.green,
              text: 'Matriz leds'),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  const _SingleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return _CardBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: color,
            child: Icon(icon, size: 35, color: Colors.white),
            //La propiedad radius del WIDGET CircleAvatar nos permite ampliarlo o hacerlo más grande
            radius: 30,
          ),
          const SizedBox(height: 20,),
          Text(text, style: TextStyle(color: color, fontSize: 18))
        ],
      )
    );
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;
  const _CardBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),

        //EL siguiente WIDGET nos permite agregar un BLUR
        child: BackdropFilter(
          //El WIDGET BackdropFilter necesita la propiedad filter
          //Para agregar el blur es necesario colocar la siguiente propiedad
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: child,
          ),
        ),
      ),
    );
  }
}
