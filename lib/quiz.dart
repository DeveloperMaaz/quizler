import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './main.dart';


class Quiz extends StatelessWidget {

   final List questionz;
    final Function  ansQuest;
   final int quesIndex;
  Quiz({required this.questionz,required this.ansQuest,required this.quesIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questionz[quesIndex]['questionText']),
        SizedBox(height: 20,),
        ...(questionz[quesIndex]['answer']).map((answers){
          return Answer(()=>ansQuest(answers['score']),answers['text']);
        }).toList()

      ],
    );
  }
}
