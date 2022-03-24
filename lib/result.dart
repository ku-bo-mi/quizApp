import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  //property
  final int resultScore;
  final VoidCallback resetHandler;

  //constructor
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = '';
    if (resultScore >= 30) {
      resultText = 'You did it!';
    } else if (resultScore >= 20) {
      resultText = 'Very close!';
    } else {
      resultText = 'Good try!';
    }
    return resultText;
  }

  //const Result({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          margin: EdgeInsets.only(top: 200),
          alignment: Alignment.center,
          child: Column(children: <Widget>[
            Text(
              'Your score:',
              style: TextStyle(
                color: Colors.indigo,
              ),
            ),
            Text(
              resultScore.toString() + ' / 30',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),
            Text(
              resultPhrase,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
              textAlign: TextAlign.center,
            ),
            RaisedButton(
              onPressed: resetHandler,
              color: Colors.indigoAccent,
              child: Text('Try again!'),
              textColor: Colors.white,
            )
          ])),
    );
  }
}
