import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Import the audioplayers package
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play("note$soundNumber.wav");
  }

  Widget buildKey(Color color, int number) {
    return Expanded(
      child: FlatButton(
        child: null,
        color: color,
        onPressed: () => playSound(number),
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
              buildKey(Colors.red, 1),
              buildKey(Colors.blue, 2),
              buildKey(Colors.yellow, 3),
              buildKey(Colors.green, 4),
              buildKey(Colors.brown, 5),
              buildKey(Colors.white, 6),
              buildKey(Colors.orange, 7),
            ],
          ),
        ),
      ),
    );
  }
}
