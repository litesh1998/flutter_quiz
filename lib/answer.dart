import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback onPress;
  final String answerText;

  const Answer(this.answerText,this.onPress,{super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPress,
        child: Text(answerText),
      ),
    );
  }
}
