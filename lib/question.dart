import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.all(20),
      child: Text(questionText,
          style: TextStyle(fontSize: 25), textAlign: TextAlign.center),
    );
  }
}
