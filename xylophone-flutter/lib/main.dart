import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildArea({MaterialColor color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text('Xylophone : Play Music!'),
          ),
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildArea(color: Colors.red, soundNumber: 1),
              buildArea(color: Colors.orange, soundNumber: 2),
              buildArea(color: Colors.yellow, soundNumber: 3),
              buildArea(color: Colors.green, soundNumber: 4),
              buildArea(color: Colors.teal, soundNumber: 5),
              buildArea(color: Colors.blue, soundNumber: 6),
              buildArea(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
