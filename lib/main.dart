import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0)))),
                  onPressed: () {
                    setAudio(1);
                  },
                  child: const Text("Play Me"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setAudio(2);
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.yellowAccent,
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0)))),
                  child: const Text("Play Me"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setAudio(3);
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0)))),
                  child: const Text("Play Me"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setAudio(4);
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0)))),
                  child: const Text("Play Me"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setAudio(5);
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.brown,
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0)))),
                  child: const Text("Play Me"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setAudio(6);
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0)))),
                  child: const Text("Play Me"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setAudio(7);
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purpleAccent,
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0)))),
                  child: const Text("Play Me"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

setAudio(int num) {
  AssetsAudioPlayer.newPlayer().open(
    Audio("assets/note$num.wav"),
    autoStart: true,
    showNotification: true,
  );
}
