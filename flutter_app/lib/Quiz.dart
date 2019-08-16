import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  @override
  final List<Map<String, Object>> question;
  final Function questionplus;
  final int questionpl;
  Quiz(
      {@required this.question,
      @required this.questionpl,
      @required this.questionplus});
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        questions(question[questionpl]['questionText']),
        ...(question[questionpl]['answers'] as List<Map<String, Object>>)
            .map((anwser) {
              return Answer(()=>questionplus(anwser['Score']),anwser['text']);
            }),
      ],
    );  
  }
}
