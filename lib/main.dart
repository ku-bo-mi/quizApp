import 'package:flutter/material.dart';

import './quiz.dart'; // './' = same directory
import './result.dart';

//void main() {
//  runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return _MyAppState();
  }
}

// starting with '_' makes the class public to private
class _MyAppState extends State<MyApp> {
  // map with question and list of answers
  // const: never change. compile-time constant
  final _questions = const [
    {
      'questionText':
          'Which mammal is known to have the most powerful bite in the world?',
      'answers': [
        {'text': 'Elephant', 'score': 0},
        {'text': 'Dog', 'score': 0},
        {'text': 'Hippopotamus', 'score': 10},
        {'text': 'Crocodile', 'score': 0},
      ]
    },
    {
      'questionText':
          'Which animal is known to spend 90% of its day, sleeping?',
      'answers': [
        {'text': 'Cat', 'score': 0},
        {'text': 'Lazy monky', 'score': 0},
        {'text': 'Giraffe', 'score': 0},
        {'text': 'Koalas', 'score': 10},
      ]
    },
    {
      'questionText': 'What color is the tongue of a giraffe?',
      'answers': [
        {'text': 'Black', 'score': 0},
        {'text': 'Purple', 'score': 10},
        {'text': 'Green', 'score': 0},
        {'text': 'Yellow', 'score': 0},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  // this method is called when the answer is pressed
  void _answerQuestion(int score) {
    // add the given score to the total score
    _totalScore += score;

    //calls build method and renders UI
    setState(() {
      _questionIndex++;
    });

    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Animal Quiz'),
          backgroundColor: Colors.indigo,
        ),
        // ?: if the condition is true, then create the column
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
