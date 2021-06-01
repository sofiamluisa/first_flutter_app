import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main(){
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
    final List<String> list = <String>["Buna ziua!",'Gutten Tag!',
    "Cum te cheama?","Whie heist du?", "Care este animalul tau preferat?",
    "Welches ist dein Lieblingstier?", "Animalul meu preferat este cainele.",
    "Mein Lieblingstier ist der Hund."];
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
        ),
      padding: const EdgeInsets.all(16.0),
        itemCount: 8,
        itemBuilder: (BuildContext context, int index){
          return TextButton(onPressed: ()
              { dynamic player = AudioCache().play('gutternmorgen.wav')},
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
              )

          );



          },

        ));
      }


  }




