import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
// void main(){
// // runApp(My App());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final List<Map<String, Object>> _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 20},
        {'text': 'blue', 'score': 30},
        {'text': 'Green', 'score': 40},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Cow', 'score': 10},
        {'text': 'Bull', 'score': 20},
        {'text': 'Ghoda', 'score': 30},
        {'text': 'Gadha', 'score': 40},
      ],
    },
    {
      'questionText': 'What\'s your favourite Fruit?',
      'answers': [
        {'text': 'Apple', 'score': 10},
        {'text': 'Banana', 'score': 20},
        {'text': 'Mango', 'score': 30},
        {'text': 'Strawberry', 'score': 40},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    //var aBool = true;
    //aBool = false;
// +=
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No More Questions!');
    }
  }
  //single = means you are storing a value and == means you are comapring the values

  @override
  Widget build(BuildContext) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore),
      ),
    );
  }
}
