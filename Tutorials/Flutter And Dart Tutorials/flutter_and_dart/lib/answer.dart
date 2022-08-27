//Packages
// ignore_for_file: deprecated_member_use, prefer_const_constructors, duplicate_ignore, sized_box_for_whitespace, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;

  Answer(this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text('Answer 1'),
          onPressed: selectHandler(),
        ));
  }
}
