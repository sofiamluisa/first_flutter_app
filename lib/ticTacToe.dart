import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(ticTacToe());
}

class ticTacToe extends StatelessWidget {
  const ticTacToe({Key? key}) : super(key: key);

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

    return Scaffold(
        appBar: AppBar(
          title: Text("Tic-Tac-Toe GAME"),
          backgroundColor: Colors.cyan,
        ),
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            padding: const EdgeInsets.all(10.0),
            itemCount: 9,
            itemBuilder: (BuildContext context, int index){
              return Container(
                  color: index.isOdd ? Colors.amber : Colors.green,
                  margin: const EdgeInsets.all(5.0),
                  child: Text('$index')

              );
            }
        )
    );
  }
}



