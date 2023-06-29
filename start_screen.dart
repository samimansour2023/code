import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
const StartScreen (this.startQuiz,{super.key});

final void Function() startQuiz;


@override
  Widget build(context) {
return Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/quiz-logo.png',width: 300,
        color: const Color.fromARGB(150, 255, 255, 255),),
        const SizedBox(height:30),

        const Text('Learn Flutter the Right Way!',style: TextStyle(color:
        Colors.white, fontSize: 30,)

          ,),
        const SizedBox(height:30),
        OutlinedButton.icon(onPressed: startQuiz,
            icon: const Icon (Icons.arrow_circle_right_sharp,color:
            Colors.white,),
            label: const Text(
              'Start Quiz',style: TextStyle(color:
            Colors.white),)
        )
          ],
    ));

}

}

