import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function selectHandler;

  Answer(this.answerText, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
      width: double.infinity,
      child: RaisedButton(
        onPressed: selectHandler,
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
      ),
    );
  }
}
