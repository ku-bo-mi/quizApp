import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  //property
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  // constructor
  Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex});

  //const Quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(40),
        child: Column(children: [
          Question(questions[questionIndex]['questionText'].toString()),
          // ...: Unlist the list
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
              .map((answer) {
            return Answer(() => answerQuestion(answer['score']),
                answer['text'].toString());
          }).toList() // convert to list
        ]));
  }
}
