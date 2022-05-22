import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyPiano());
}

class MyPiano extends StatelessWidget {
  const MyPiano({Key? key}) : super(key: key);

  void playsound(int soundnumber) {
    final player = AudioCache();
    soundnumber++;
    player.play("nite$soundnumber.wav");
  }

  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(

      )

    );
  }
}

