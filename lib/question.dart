import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText; // final: never change after initializing

  //constructor with argument
  Question(this.questionText);
  //const Question({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //infinity: full width size
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
