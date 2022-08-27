import 'package:flutter/material.dart';
import 'package:quizler/quiz.dart';
import 'package:quizler/result.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex=0;
  int _totalScore=0;

  void _restart(){
    setState(() {
      _questionIndex=0;
      _totalScore=0;
    });
  }

  void _answerQuestion(int score){
    _totalScore=_totalScore+score;
    setState(() {
      _questionIndex=_questionIndex+1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    List _questions= const[
      {
      'questionText':'What\'s your favourite color?',
        'answer':[
          {'text':'black','score':3},
          {'text':'red','score':7},
          {'text':'green','score':8},
          {'text':'blue','score':6},
        ],
      },
      {
        'questionText':'What\'s your favourite animal?',
        'answer':[

          {'text':'Dog','score':9},
          {'text':'Hen','score':12},
          {'text':'parrot','score':4},
          {'text':'zarafa','score':1},

        ],
      },
      {
        'questionText':'What\'s your favourite person?',
        'answer':[
          {'text':'Moin','score':2},
          {'text':'Maaz','score':2},
          {'text':'Meharban','score':9},
          {'text':'Usama','score':13},
        ],
      },

      ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: Scaffold(
       appBar: AppBar(
         title: Center(child:  Text('Quizler App')),
       ),
       body:  _questionIndex<_questions.length? Quiz(quesIndex: _questionIndex,
         questionz:_questions,ansQuest: _answerQuestion,): Result(resultScore: _totalScore,restartPass: _restart,),
     ),
    );
  }
}
