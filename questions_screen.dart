import 'package:flutter/material.dart';
import 'package:third_project/answer_button.dart';
import 'package:third_project/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen ({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionScreenState();

  }
}

class _QuestionScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    var currentQuestionIndex = 0;

    void answerQuestion() {
      setState(() {
        currentQuestionIndex++;

      });
    }


    final currentQuestion = questions[currentQuestionIndex];
    return  SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(currentQuestion.text, style:
            const TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffleAnswers().map((answer){
              return AnswerButton(answerText: answer,onTap: answerQuestion,
              );
            })




          ],),
      ),
    );
  }

}
