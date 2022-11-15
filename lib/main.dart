import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: FloatingActionButton(
              onPressed: () async {
                final player = AudioPlayer();
                await player.play(AssetSource('sounds/note1.wav'));
              },
              child: const Text("click"),
            ),
          ),
        ),
      ),
    );
  }
}
