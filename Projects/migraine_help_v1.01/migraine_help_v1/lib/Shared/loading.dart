// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:adobe_xd/adobe_xd.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Pinned.fromPins(
      Pin(start: -320.0, end: -320.0),
      Pin(start: -312.0, end: -48.0),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.0, -1.0),
            end: Alignment(0.0, 1.0),
            colors: [
              const Color(0xff7dffb1),
              const Color(0xff419966),
              const Color(0xff48f0c7),
              const Color(0xff2cd179),
              const Color(0xffb9eed1),
              const Color(0xff02776f),
              const Color(0xff39a67f),
              const Color(0xff37a78c)
            ],
            stops: [0.0, 0.038, 0.211, 0.213, 0.218, 1.0, 1.0, 1.0],
          ),
        ),
        child: Center(
          child: SpinKitChasingDots(
            color: Color.fromARGB(255, 255, 255, 255),
            size: 50.0,
          ),
        ),
      ),
    );
  }
}
