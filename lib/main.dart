import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const Xylophone());

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  void playAudio(String sound) async {
    final player = AudioPlayer();
    await player.play(AssetSource('sounds/$sound.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 250, 11, 116)),
                  onPressed: () {
                    playAudio("sound1");
                  },
                  child: const Text(""),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 242, 73, 166)),
                  onPressed: () {
                    playAudio("sound2");
                  },
                  child: const Text(""),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor:
                          const Color.fromARGB(255, 165, 106, 166)),
                  onPressed: () {
                    playAudio("sound3");
                  },
                  child: const Text(""),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(195, 78, 191, 217)),
                  onPressed: () {
                    playAudio("sound4");
                  },
                  child: const Text(""),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(224, 67, 202, 217)),
                  onPressed: () {
                    playAudio("sound5");
                  },
                  child: const Text(""),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(240, 67, 202, 217)),
                  onPressed: () {
                    playAudio("sound6");
                  },
                  child: const Text(""),
                ),
              ),
              Expanded(
                child: TextButton(
                  style:
                      TextButton.styleFrom(backgroundColor: Colors.cyanAccent),
                  onPressed: () {
                    playAudio("sound7");
                  },
                  child: const Text(""),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
