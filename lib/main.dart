import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  void playSound(int noteNum) {
    final player = AudioCache();
    player.play('note$noteNum.wav');
  }

  Expanded buildSoundKeys({Color color, int soundNum}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNum);
        },
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.black,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildSoundKeys(color: Colors.red, soundNum: 1),
                buildSoundKeys(color: Colors.orange, soundNum: 2),
                buildSoundKeys(color: Colors.yellow, soundNum: 3),
                buildSoundKeys(color: Colors.green, soundNum: 4),
                buildSoundKeys(color: Colors.teal, soundNum: 5),
                buildSoundKeys(color: Colors.blue, soundNum: 6),
                buildSoundKeys(color: Colors.purple, soundNum: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
