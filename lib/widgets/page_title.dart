import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //El WIDGET SafeArea nos sirve para poner los demás WIDGETS de manera correcta cuando un celular cuenta con NOTCH
    return SafeArea(
      bottom: false,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:const <Widget>[
            Text('Apepe Sismica', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
            SizedBox(height: 10,),
            Text('Esta apepe fue creada a base de una matriz de leds y un enfriador', style: TextStyle(fontSize: 16, color: Colors.white))
          ],
        ),
      ),
    );
  }
}