import 'package:flutter/material.dart';

class Question extends StatelessWidget {

 final String? qestionText;

  Question(this.qestionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
        margin: EdgeInsets.all(8.0),
        child: Text(qestionText!,style: TextStyle(fontSize: 28.0,),
        textAlign: TextAlign.center,
        ));
  }
}
