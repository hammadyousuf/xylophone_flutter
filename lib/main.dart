import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound (int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(soundNumber);
        },
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[


              buildKey(color: Colors.teal, soundNumber: 1),
              buildKey(color: Colors.red, soundNumber: 2),
              buildKey(color: Colors.deepOrange, soundNumber: 3),
              buildKey(color: Colors.redAccent, soundNumber: 4),
              buildKey(color: Colors.redAccent, soundNumber: 5),
              buildKey(color: Colors.deepOrange, soundNumber: 6),
              buildKey(color: Colors.deepPurple, soundNumber: 7),



            ],
          ),
        ),
      ),
    );
  }
}
