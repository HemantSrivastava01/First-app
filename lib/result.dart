import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Result(this.resultScore);
  String get resultPhrase {
    String resultText;
    if (resultScore == 30) {
      resultText = 'You got every answer right';
    } else if (resultScore == 20) {
      resultText = 'Good Score!';
    } else if (resultScore == 10) {
      resultText = 'You need to try one more time!';
    } else {
      resultText = 'Better Luck next time!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
