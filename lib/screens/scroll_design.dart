import 'package:flutter/material.dart';

class ScrollDesignScreen extends StatelessWidget {
  const ScrollDesignScreen({Key? key}) : super(key: key);
  
  final BoxDecoration boxDecoration = const BoxDecoration(
      gradient: LinearGradient(
          //la priopiedadd begin y end me permite indicarle al gradiente donde iniciar y donde va a terminar de hacer el efecto en la pantalla
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          //La propiedad stops es para indicar donde queremos que inicie nuestros dos colores que tenemos
          stops: [0.4, 0.5],
          colors: [Color(0xff5EE8C5), Color(0xff30BAD6)]
      )
    );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      //La propiedad decoration del WIDGET Container nos permite poner un gradiente con le objeto BoxDecoration y su propiedad gradient la cual tiene LinearGradient
      decoration: boxDecoration,
      //El WIDGET PageView nos permite hacer Scroll de una pantalla a otra, ya sea horizontal o vertical el cual se define en el scrollDirection
      child: PageView(
        //La siguiente propiedad nos permite jalar hacia abajo o hacia arriba aunque estemos en el límite del dispositivo
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: const <Widget>[Page1(), Page2()],
      ),
    ));
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //El Widget Stack funciona como el Column solo que a este se le pueden poner WIDGETS encima de los otros
    return Stack(
      children: const <Widget>[Background(), MainContent()],
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      //Con este double.infinity le decimos al Container que ocupe todo el espacio posible
      height: double.infinity,
      alignment: Alignment.topRight,
      //En este caso el WIDGET hijo que el el child es el que controla el ancho y alto de la columna que sería el padre Container,
      child: const Image(
        image: AssetImage('assets/scroll-1.png'),
      ),
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = TextStyle(
        fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white);
    //El WIDGET SafeArea nos ayuda para el NOTCH de algunos celulares
    return SafeArea(
      //EL SafeArea tiene propiedades para de TOP, BOTTOM que normalemente están en true para poder hacer esa separación
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            height: 30,
          ),
          Text(
            '11',
            style: textStyle,
          ),
          Text(
            'Miercoles',
            style: textStyle,
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.keyboard_arrow_down,
            size: 100,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: const Color(0xff0098FA),
              shape: const StadiumBorder()),
          child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text('Bienvenido',
                  style: TextStyle(color: Colors.white, fontSize: 30))),
          onPressed: () => {},
        ),
      ),
    );
  }
}
