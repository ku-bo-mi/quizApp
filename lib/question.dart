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
      margin: EdgeInsets.only(bottom: 20),
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black54,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
