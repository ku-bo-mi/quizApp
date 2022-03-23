import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  //property
  final int resultScore;
  final VoidCallback resetHandler;

  //constructor
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 8) {
      resultText = 'You are awesome!';
    } else if (resultScore <= 12) {
      resultText = 'You are cool!';
    } else if (resultScore <= 16) {
      resultText = 'You are okay!';
    } else {
      resultText = 'You are bad...';
    }
    return resultText;
  }

  //const Result({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          onPressed: resetHandler,
          child: Text('Restart Quiz!'),
          textColor: Colors.blue,
        )
      ]),
    );
  }
}
