import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

//Arrow function syntax (only 1 instruction inside the funcit
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  //The argument of the function can be written also in the usual way void playSound(int soundNumber) but in this way I can use the arguments
  // inside the calling function playSound(soundNumber : 1). Very useful if my function has got more than one arguments
  void playSound({int soundNumber}) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color colorSelected, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber: soundNumber);
        },
        color: colorSelected,
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(colorSelected: Colors.red, soundNumber: 1),
              buildKey(colorSelected: Colors.orange, soundNumber: 2),
              buildKey(colorSelected: Colors.yellow, soundNumber: 3),
              buildKey(colorSelected: Colors.green, soundNumber: 4),
              buildKey(colorSelected: Colors.teal, soundNumber: 5),
              buildKey(colorSelected: Colors.blue, soundNumber: 6),
              buildKey(colorSelected: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
