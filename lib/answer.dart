import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectedHandler;
  final String answerText;

  Answer(this.selectedHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue[200],
        onPressed: selectedHandler,
        child: Text(answerText),
        textColor: Colors.white,
      ),
    );
  }
}
