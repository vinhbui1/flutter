import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerindex;
  final String index;
  Answer(this.answerindex,this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text(index),
        color: Colors.blue,
        onPressed: answerindex,
      ),
    );
  }
}
