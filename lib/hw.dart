import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Homework());
}

class Homework extends StatefulWidget {
  const Homework({Key key}) : super(key: key);

  @override
  _HomeworkState createState() => _HomeworkState();
}

class _HomeworkState extends State<Homework> {
  final TextEditingController controller = TextEditingController();
  var input;
  var result;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Currency Converter"),
        ),
        body: Column(
          children: <Widget>[
            Image.network(
                'https://d1e00ek4ebabms.cloudfront.net/production/6b7c5fa6-b824-4430-b544-2102ad555fd1.jpg'),
            if (input != null) Text(input.toString()),
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  labelText: "Enter value in EUR",
                  suffix: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {
                      controller.clear();
                    },
                  )),
              keyboardType: TextInputType.number,
              onChanged: (String value) {
                setState(() {
                  input = value;
                });
              },
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  // 1 EUR = 4.93 RON
                  result = int.parse(input) * 4.93;
                });
              },
              child: Text("Convert"),
            ),
            Expanded(
                child: Center(
                    child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Text(result.toString() + " RON")],
            )))
          ],
        ),
      ),
    );
  }
}
