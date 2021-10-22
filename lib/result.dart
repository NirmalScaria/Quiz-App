import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (totalScore < 10) {
      resultText = 'You are very Innocent!';
    } else if (totalScore < 20) {
      resultText = 'You are pretty Likeable!';
    } else if (totalScore < 30) {
      resultText = 'You seems to be a Bad one!';
    } else {
      resultText = 'You are Devil!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase + '\n Your score is:' + totalScore.toString(),
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: resetQuiz(),
            child: Text('Restart Quiz'),
          )
        ],
      ),
    );
  }
}
