import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['Wishvantha Perera', 'Venuka Wijethunga'];
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: Text(
          'My First App',
        )),
        body: Column(
          children: <Widget>[
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                print('Answer 3');
              },
            )
          ],
        ),
      ),
    );
  }
}
