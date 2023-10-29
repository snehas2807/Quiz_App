import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHander;
  String answerText;

  Answer(this.selectHander, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHander,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.indigo),
        ),
        child: Text(answerText),
      ),
    );
  }
}
