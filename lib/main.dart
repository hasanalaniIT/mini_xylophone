import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

/// MIDTERM Project Xylophone

/// This project was done by
/// Hasan Alani // B1905.090005


void main() => runApp(const Xylophone());

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  void playAudio(String sound) async {
    ///
    /// Function to make an instance of AudioPlayer.
    ///
    final player = AudioPlayer();
    await player.play(AssetSource('sounds/$sound.wav'));
  }

  static const colors = {
    /// Dictionary for all the colors used with the notes.
    "note_color_1": Color.fromARGB(255, 236, 67, 147),
    "note_color_2": Color.fromARGB(229, 242, 73, 166),
    "note_color_3": Color.fromARGB(255, 165, 106, 166),
    "note_color_4": Color.fromARGB(195, 78, 191, 217),
    "note_color_5": Color.fromARGB(224, 67, 202, 217),
    "note_color_6": Color.fromARGB(255, 67, 202, 217),
    "note_color_7": Colors.cyanAccent,
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: colors["note_color_1"]),
                  onPressed: () {
                    playAudio("sound1");
                  },
                  child: const Text(""),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: colors["note_color_2"]),
                  onPressed: () {
                    playAudio("sound2");
                  },
                  child: const Text(""),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: colors["note_color_3"]),
                  onPressed: () {
                    playAudio("sound3");
                  },
                  child: const Text(""),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: colors["note_color_4"]),
                  onPressed: () {
                    playAudio("sound4");
                  },
                  child: const Text(""),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: colors["note_color_5"]),
                  onPressed: () {
                    playAudio("sound5");
                  },
                  child: const Text(""),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: colors["note_color_6"]),
                  onPressed: () {
                    playAudio("sound6");
                  },
                  child: const Text(""),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: colors["note_color_7"]),
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
