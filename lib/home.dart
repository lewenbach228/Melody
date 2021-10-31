import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget elevatedBtn(soundNumber, Color color, String text) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          playSound(soundNumber);
        },
        style: ElevatedButton.styleFrom(
          primary: color,
          textStyle: const TextStyle(
            fontSize: 23,
          ),
        ),
        child: Text(text),
      ),
    );
  }

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   title: const Text('Xylophone'),
      // ),
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            elevatedBtn(1, Colors.red, 'Do'),
            elevatedBtn(2, Colors.orange, 'Re'),
            elevatedBtn(3, Colors.yellow, 'Mi'),
            elevatedBtn(4, Colors.green, 'Fa'),
            elevatedBtn(5, Colors.teal, 'Sol'),
            elevatedBtn(6, Colors.blue, 'La'),
            elevatedBtn(7, Colors.purple, 'Si'),
          ],
        ),
      ),
    );
  }
}
