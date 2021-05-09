import 'package:firstapp/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'The Battle of Plassey was fought in ?',
      'answers': [
        {'text': '1757', 'score': 1},
        {'text': '1782', 'score': 0},
        {'text': '1748', 'score': 0},
        {'text': '1764', 'score': 0}
      ],
    },
    {
      'questionText':
          'Two of the great Mughals wrote their own memories. There were?',
      'answers': [
        {'text': 'Babar and Humayun', 'score': 0},
        {'text': 'Humayun and Jahangir', 'score': 0},
        {'text': 'Babar and Jahangir', 'score': 10},
        {'text': 'Jahangir and Shahjahan', 'score': 0}
      ],
    },
    {
      'questionText':
          'The use of spinning wheel (Charkha) became common during the?',
      'answers': [
        {'text': '9th Century AD', 'score': 0},
        {'text': '10th Century AD', 'score': 0},
        {'text': '12th Century AD', 'score': 0},
        {'text': '14th Century AD', 'score': 10}
      ],
    },
  ];
  var questionIndex = 0;
  var totalScore = 0;

  void answerQuestion(int score) {
    totalScore = totalScore + score;
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
    if (questionIndex < questions.length) {
      print("we have more questions!");
    } else {
      print("No more questions!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questionIndex: questionIndex,
                questions: questions,
              )
            : Result(totalScore),
      ),
    );
  }
}
