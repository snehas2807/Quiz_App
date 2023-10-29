import 'package:flutter/material.dart';
import 'answer.dart';
import 'questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(
      {required this.question,
      required this.answerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          question[questionIndex]['questionText'] as String,
        ),
        ...(question[questionIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(answer['score']), answer['text'] as String);
        }).toList()

        // Answer(_answerQuestion),
        // Answer(_answerQuestion),
        // Answer(_answerQuestion),
        // ElevatedButton(
        //   style: ButtonStyle(
        //       backgroundColor:
        //           MaterialStateProperty.all(Colors.red.shade300),
        //       foregroundColor:
        //           MaterialStateProperty.all(Colors.yellow.shade300),),

        //   onPressed:
        //       answerQuestion, // Calling the function answerQuestion on pressing on  it by method 1
        //   child: Text('Answer 1'),
        // ),
        // ElevatedButton(
        //   style: ButtonStyle(
        //     backgroundColor: MaterialStateProperty.all(Colors.amber),
        //   ),
        //   onPressed: () => print(
        //       'ANSWER 2 CHOSEN'), // Calling the function answerQuestion on pressing on  it by method 2
        //   child: Text('Answer 2'),
        // ),
        // ElevatedButton(
        //   style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.greenAccent),),
        //   onPressed: () {
        //     ///......do something
        //     print('answer 3 chosen');
        //   }, // Calling the function answerQuestion on pressing on  it by method 3
        //   child: Text('Answer 3'),
        // ),
      ],
    );
  }
}
