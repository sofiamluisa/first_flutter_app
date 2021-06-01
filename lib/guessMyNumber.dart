// ignore: file_names, file_names
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(GuessMyNumber());
}

class GuessMyNumber extends StatefulWidget {
  const GuessMyNumber({Key key}) : super(key: key);

  @override
  _GuessMyNumberState createState() => _GuessMyNumberState();
}

class _GuessMyNumberState extends State<GuessMyNumber> {
  TextEditingController controller = TextEditingController();
  int randomNumber = Random().nextInt(10);
  String message;
  int number;

  // Widget okButton = FlatButton(
  //   child: Text("OK"),
  //   onPressed: () { },
  // );

  void checkAnswer(dynamic number) {
    if (number == randomNumber) {
      message = "You guessed right !";
    } else if (number > randomNumber != null) {
      message = "You tried $number! \n Try lower !";
    } else if (number < randomNumber != null) {
      message = "You tried $number! \n Try higher !";
    }
    controller.clear();


  }

  void getAlert(BuildContext context){


    showDialog<Text>(
        context: context,
        builder: (context)=> AlertDialog(
          title: Text("You were right"),
          content:  Text("It was $number"),
          contentPadding: EdgeInsets.all(100.0),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Guess My Number Game"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: <Widget>[
              Text("I'm thinking of a number between 1 and 100!"),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: TextField(
                  controller: controller,
                  decoration: const InputDecoration(
                      labelText: "It's your time to guess my number!"),
                  keyboardType: TextInputType.number,
                ),
              ),
              Text(
                '$message',
                style: TextStyle(fontSize: 15),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextButton(
                  child: Text("Guess"),
                  onPressed: () {
                    checkAnswer(int.parse(controller.text));
                    setState(() {
                      if (number == randomNumber) {
                        getAlert(context);
                      }
                    });
                  },
                ),
              )
            ],
          )),
    ));
  }
}
