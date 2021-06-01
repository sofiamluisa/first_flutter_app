import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

const List<String> sounds = [
  'buna.wav',
    'gutternmorgen.wav',
  'noaptebuna.wav',
  'nacht.wav',
  'felicitari.wav',
  "gluckwunsch.wav",
  'deundeesti.wav',
  "woher.wav"];

void main() {
  runApp(basicPhases());
}

class basicPhases extends StatelessWidget {
  const basicPhases({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> list = <String>[
      "Buna ziua!",
      'Gutten Tag!',
      "Noapte buna!",
      "Gutten nacht!",
      "Felicitari!",
      "Glückwunsch!",
      "De unde esti ?",
      "Woher kommen Sie?"
    ];
    return Scaffold(
        appBar: AppBar(),
        body: GridView.count(
          scrollDirection: Axis.vertical,
          mainAxisSpacing: 5.0,
          crossAxisCount: 2,
          reverse: false,
          children: List.generate(sounds.length, (index) {
            return TextButton(
                onPressed: () {
                  dynamic player = AudioCache().play(sounds[index]);
                },
                child: new Card(
                  elevation: 5.0,
                  shadowColor: Colors.cyan,
                  child: Container(
                    alignment: Alignment.center,
                    color: index.isOdd ? Colors.amber : Colors.green,
                    padding: const EdgeInsets.all(14.0),
                    margin: const EdgeInsets.all(14.0),
                    child: Text(list[index]),
                  ),
                ));
          }),
        ));
  }
}
