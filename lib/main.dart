import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void play(int x) async {
    final player = AudioPlayer();
    player.play(AssetSource('note$x.wav'));
  }

  Expanded button(Color color, int sound) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero
        ),
        onPressed: (){
          play(sound);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              button(Colors.red, 1),
              button(Colors.blue, 2),
              button(Colors.green, 3),
              button(Colors.yellow, 4),
              button(Colors.pink, 5),
              button(Colors.orange, 6),
              button(Colors.teal, 7),
            ],
          )
        ),
      ),
    );
  }
}
