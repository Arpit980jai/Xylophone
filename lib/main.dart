import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  return runApp(MyApp());
}

void SoundNumber(int soundNumber) {
  final player = AudioCache();
  player.play('note$soundNumber.wav');
}

Expanded playSound({Color color, int soundNumber}) {
  return Expanded(
    child: FlatButton(
      onPressed: () {
        SoundNumber(soundNumber);
      },
      color: color,
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            playSound(color: Colors.red, soundNumber: 1),
            playSound(color: Colors.orange, soundNumber: 2),
            playSound(color: Colors.yellow, soundNumber: 3),
            playSound(color: Colors.green, soundNumber: 4),
            playSound(color: Colors.blueGrey, soundNumber: 5),
            playSound(color: Colors.blue, soundNumber: 6),
            playSound(color: Colors.purple, soundNumber: 7),
          ]),
        ),
      ),
    );
  }
}
