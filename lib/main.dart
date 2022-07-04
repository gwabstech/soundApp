import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildkey(po: 1),
                buildkey(po: 2, color: Colors.amberAccent),
                buildkey(po: 3, color: Colors.blue),
                buildkey(po: 4),
                buildkey(po: 5, color: Colors.yellowAccent),
                buildkey(po: 6),
                buildkey(po: 7, color: Colors.greenAccent),
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

Expanded buildkey(
    {int po = 1, Color color = Colors.red, String text = 'Play Me'}) {
  return Expanded(
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: color,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)))),
      onPressed: () {
        setAudio(po);
      },
      child: Text(text),
    ),
  );
}
