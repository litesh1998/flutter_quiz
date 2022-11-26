import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final VoidCallback resetQuiz;
  const Result(this.resetQuiz,this.finalScore, {super.key});

  String get resultPhrase {
    var resultText = "You did It!";

    if (finalScore <=8) {
      resultText= 'You are awesome and innocent!';
    } else if(finalScore<=12) {
      resultText= 'Pretty likable';
    } else if(finalScore<=18) {
      resultText= 'You are ...strange?';
    }  else{
      resultText = 'You are bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(onPressed: resetQuiz, child: Text("Play Again"))
        ],
      ),
    );
  }
}
