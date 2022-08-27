import 'package:flutter/material.dart';
import './main.dart';

class Answer extends StatelessWidget {
  final Function ()? selectHandler;
  final String ?details;
  Answer(this.selectHandler,this.details);
  @override
  Widget build(BuildContext context) {
    return Container(
    width: double.infinity,
    margin: EdgeInsets.all(9.0),
    child: RaisedButton(
      color: Colors.blue,
          onPressed:selectHandler,
    child: Text(details!),
    ),
    );
  }
}
