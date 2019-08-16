import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  final int score;
  final Function resethanlder;
  Result(this.score, this.resethanlder);

  String get yourscore {
    var resultText;
    if (score < 8) {
      resultText = 'con ga mai';
    } else {
      resultText = 'con ga trong';
    }
    return resultText;
  }

  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(yourscore + ' $score',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          RaisedButton(
            child: Text('reset my life'),
            onPressed: resethanlder,
          )
        ],
      ),
    );
  }
}
