// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

/*class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          //flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('images/dice1.png'),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('images/dice1.png'),
          ),
          */ /*Image(
            image: AssetImage(
              'images/dice1.png',
            ),*/ /*
        ),
      ],
    );
  }
}*/

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int dice1 = Random().nextInt(6) + 1;
  int dice2 = Random().nextInt(6) + 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            //flex: 2,
            child: TextButton(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/dice$dice1.png'),
              ),
              onPressed: () {
                setState(() {
                  dice1 = Random().nextInt(6) + 1;
                });
              },
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  dice2 = Random().nextInt(6) + 1;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/dice$dice2.png'),
              ),
            ),
            /*Image(
              image: AssetImage(
                'images/dice1.png',
              ),*/
          ),
        ],
      ),
    );
  }
}
