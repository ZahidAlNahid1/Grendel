// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables, avoid_print, must_be_immutable

//Packages
import 'package:flutter/material.dart';

//Dart Files
import 'question.dart';
import 'answer.dart';

void main() => runApp(MyApp());

/*void main() {
  runApp(MyApp());
}*/

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite colour?',
      'What\'s your favourite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter & Dart'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion)
          ],
        ),
      ),
    );
  }
}
