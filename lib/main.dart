import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const Xylophone());

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  void playAudio(String sound) async {
    /// Function to make an instance of AudioPlayer.
    ///
    final player = AudioPlayer();
    await player.play(AssetSource('sounds/$sound.wav'));
  }

  Expanded keyGenerator({required String sound, required Color color}) {
    /// Factory to generate new key.
    ///
    /// takes string the sound audio to be played.
    /// takes Color the color to be used.
    /// returns an Expanded TextButton.
    ///
    return Expanded(
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: color,
          ),
          onPressed: () {
            playAudio(sound);
          },
          child: const Text(""),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black87,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              keyGenerator(sound:"sound1",color:const Color.fromARGB(255, 236, 67, 147) ),
              keyGenerator(sound:"sound2",color:const Color.fromARGB(229, 242, 73, 166) ),
              keyGenerator(sound:"sound3",color:const Color.fromARGB(255, 165, 106, 166) ),
              keyGenerator(sound:"sound4",color:const Color.fromARGB(195, 78, 191, 217) ),
              keyGenerator(sound:"sound5",color:const Color.fromARGB(224, 67, 202, 217) ),
              keyGenerator(sound:"sound6",color:const Color.fromARGB(255, 67, 202, 217) ),
              keyGenerator(sound:"sound7",color:Colors.cyanAccent ),
            ],
          ),
        ),
      ),
    );
  }
}
