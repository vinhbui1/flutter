import 'package:flutter/material.dart';

class questions extends StatelessWidget {
  @override
  final String index;
  questions(this.index);
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(index,
          style: TextStyle(fontSize: 28), textAlign: TextAlign.center),
    );
  }
}
