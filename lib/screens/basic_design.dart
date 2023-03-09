import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget{
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const <Widget>[
          Image(
            image: AssetImage('assets/landscape.jpg')
          ),
          Title(),
          ButtonSection(),

          Padding(
            padding: EdgeInsets.all(30),
            child: Text('ijgi0ngronweorgnpiwnggpwinfgipwfbgsfbvgsophfgbsdifgbsdpifgbsdpfigubsdfjkbsdifunsdnpgiusdhnipgsbdnfgibsdfigbsdipfughbsdipfugbsdipfugbsdipufgbsdpiufgb')
          )
        ]
      )
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Text('Oshiment Lake Campground', style: TextStyle(fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis,),
              SizedBox(height: 5,),
              Text('kijrieo switzerland', style: TextStyle(color: Colors.black45), overflow: TextOverflow.ellipsis,)
            ],
          ),

          const SizedBox(width: 70,),
          /* Expanded(
            child: Container(),
          ), */

          const Icon(Icons.star, color: Colors.red,),
          const Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const <Widget>[
          CustomButton(icon: Icons.phone, text: 'CALL',),
          CustomButton(icon: Icons.route, text: 'ROUTE'),
          CustomButton(icon: Icons.share, text: 'SHARE'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomButton({
    Key? key, required this.icon, required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue,),
        const SizedBox(height: 8,),
        Text(text, style: const TextStyle(color: Colors.blue))
      ],
    );
  }
}