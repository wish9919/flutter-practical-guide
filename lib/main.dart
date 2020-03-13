import 'package:flutter/material.dart';
import 'package:flutter_complete_course/answer.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _yourName = '';

  var wish = 'Wishvantha';
  var osha = 'Oshini';
  var venu = 'Venuka';

  _answerQuestion({yourName}) {
    setState(() {
      _yourName = yourName;
    });
  }

  @override
  Widget build(BuildContext context) {
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
            Container(
              padding: EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('What is your name?'),
              ),
            ),
            Question(_yourName),
            Answer('Wishvantha Perera', () => _answerQuestion(yourName: wish)),
            Answer('Oshini Dissanayake', () => _answerQuestion(yourName: osha)),
            Answer('Venuka Wijethunga', () => _answerQuestion(yourName: venu))
          ],
        ),
      ),
    );
  }
}
