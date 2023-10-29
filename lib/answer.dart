import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(
          answerText,
          style: TextStyle(color: Colors.blue.shade200),
        ),
        style: ElevatedButton.styleFrom(onPrimary: Colors.white),
        onPressed: selectHandler,
      ),
    );
  }
}
