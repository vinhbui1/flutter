import 'package:flutter/material.dart';
import './Quiz.dart';
import './Result.dart';

void main() => runApp(myApp());

class myApp extends StatefulWidget {
  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  var questionpl = 0;
  var totalScore =0;

  @override
  void questionplus(int score) {
    setState(() {
      questionpl += 1;
      totalScore +=score;
    });
  }
  void resetScore() {
    setState(() {
      questionpl =0;
      totalScore =0;
    });
  }

  var question = [
    {
      'questionText': 'how are you',
      'answers': [
        {'text': 'iam fine', 'Score': 10},
        {'text': 'iam good', 'Score': 6},
        {'text': 'iam sick', 'Score': 3},
        {'text': 'iam strong', 'Score': 1},
      ]
    },
    {
      'questionText': 'what do you do ?',
      'answers': [
        {'text': 'student', 'Score': 10},
        {'text': 'teacher', 'Score': 6},
        {'text': 'worker', 'Score': 3},
        {'text': 'nothing', 'Score': 1},
      ]
    },
    {
      'questionText': 'what is name of your old love',
      'answers': [
        {'text': 'Vy', 'Score': 10},
        {'text': 'Phuong', 'Score': 6},
        {'text': 'Minh', 'Score': 3},
        {'text': 'strong', 'Score': 1},
      ]
    }
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('this is title'),
        ),
        body: questionpl < question.length
            ? Quiz(
                question: question,
                questionpl: questionpl,
                questionplus: questionplus)
            : Result(totalScore,resetScore),
      ),
    );
  }
}
