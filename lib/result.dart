import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final Function()? restartPass;
  late final int resultScore;
  Result({required this.resultScore,required this.restartPass});

  String get resultPrase{
    var resultText='you did it!';
    if(resultScore<=5){
      resultText='you did good!';
    }
    else if(resultScore>=6&&resultScore<=10){
      resultText='you did Awsome!';
    }
    else if(resultScore>=10&&resultScore<=20){
      resultText='you did Amazing!';
    }
    else
    {
      resultText='You did bad!';
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Center(
          child: Text(resultPrase,style: TextStyle(
            fontSize: 30.0,
            color: Colors.lightBlueAccent,
            fontWeight: FontWeight.bold,
          ),
          //  textAlign: TextAlign.center,
          ),
        ),

        SizedBox(height: 20.0,),
        RaisedButton(onPressed: restartPass,
        child: Text('Restart Quiz',

        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),),
        )
      ],
    );
  }
}
