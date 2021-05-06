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
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'Pink'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Dog', 'Cat', 'Cow', 'Zebra'],
    },
    {
      'questionText': 'What\'s your favorite outdoor sport?',
      'answers': ['Cricket', 'Badminton', 'Kabaddi', 'Kushti'],
    },
  ];
  var questionIndex = 0;
  void answerQuestion() {
    if (questionIndex < questions.length) {
      print("we have more questions!");
    } else {
      print("No more questions!");
    }
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
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
            : Result(),
      ),
    );
  }
}
