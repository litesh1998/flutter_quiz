import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
void main() {
  runApp(const MyAPP());
}

class MyAPP extends StatefulWidget {
  const MyAPP({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyAPP> {
  var questionIndex = 0;
  var _totalScore =0;
  void answerQuestion(int score) {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    _totalScore+=score;
    print(_totalScore);
    // print("Answer Pressed: $questionIndex ");
  }

  void resetQuiz(){
    setState(() {
      questionIndex=0;
      _totalScore=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Quiz"),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questionIndex: questionIndex,
                questions: questions)
            : Result(resetQuiz,_totalScore),
      ),
    );
  }
}
