import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(20.0),
      color: Colors.black12,
      width: double.infinity,
      height: 80.0,
      child: Align(
        alignment: Alignment.center,
        child: Text(
          questionText,
          style: TextStyle(fontSize: 20.0),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
