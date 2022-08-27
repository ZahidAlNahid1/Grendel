// ignore_for_file: non_constant_identifier_names, prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'migraine_side.dart';
import 'package:adobe_xd/page_link.dart';
import 'migraine_pain.dart';

class MigraineTop extends StatefulWidget {
  final ImageProvider migraine_big_pain_1;
  final ImageProvider head_top_1;
  final String sidestate;
  MigraineTop({
    Key? key,
    this.migraine_big_pain_1 =
        const AssetImage('assets/images/migraine_big.png'),
    this.head_top_1 = const AssetImage('assets/images/head_top.png'),
    this.sidestate = '',
  }) : super(key: key);
  @override
  _MigraineTopState createState() => _MigraineTopState();
}

class _MigraineTopState extends State<MigraineTop> {
  String state = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xff7dffb1),
      body: Stack(
        children: <Widget>[
          //Background Color Gradient
          Pinned.fromPins(
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
            ),
          ),
          //Background Image
          Pinned.fromPins(
            Pin(start: 10.0, end: 10.0),
            Pin(size: 340.0, start: 95.0),
            child:
                // Adobe XD layer: 'Migraine white' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: widget.migraine_big_pain_1,
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.1), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          //Title
          Pinned.fromPins(
            Pin(size: 128.0, middle: 0.5),
            Pin(size: 21.0, start: 43.0),
            child: Text(
              'Headache Region ',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 16,
                color: const Color(0xffffffff),
                height: 0.75,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          //Input Image
          //Bottom Left
          Pinned.fromPins(
            Pin(size: 110.0, middle: 0.35),
            Pin(size: 279.0, middle: 0.465),
            child: IconButton(
              icon: Image.asset('assets/images/bottom_left.png'),
              iconSize: 50,
              onPressed: () {
                state = 'Bottom Left';
                print(state);
              },
            ),
          ),
          //Bottom Right
          Pinned.fromPins(
            Pin(size: 112.0, middle: 0.705),
            Pin(size: 279.0, middle: 0.465),
            child: IconButton(
              icon: Image.asset('assets/images/bottom_right.png'),
              iconSize: 50,
              onPressed: () {
                state = 'Bottom Right';
                print(state);
              },
            ),
          ),
          //Middle Left
          Pinned.fromPins(
            Pin(size: 110.0, middle: 0.35),
            Pin(size: 279.0, middle: 0.33),
            child: IconButton(
              icon: Image.asset('assets/images/middle_left.png'),
              iconSize: 50,
              onPressed: () {
                state = 'Middle Left';
                print(state);
              },
            ),
          ),
          //Middle Right
          Pinned.fromPins(
            Pin(size: 110.0, middle: 0.7),
            Pin(size: 279.0, middle: 0.33),
            child: IconButton(
              icon: Image.asset('assets/images/middle_right.png'),
              iconSize: 50,
              onPressed: () {
                state = 'Middle Right';
                print(state);
              },
            ),
          ),
          //Top Left
          Pinned.fromPins(
            Pin(size: 110.0, middle: 0.35),
            Pin(size: 279.0, middle: 0.2),
            child: IconButton(
              icon: Image.asset('assets/images/top_left.png'),
              iconSize: 50,
              onPressed: () {
                state = 'Top Left';
                print(state);
              },
            ),
          ),
          //Top Right
          Pinned.fromPins(
            Pin(size: 110.0, middle: 0.7),
            Pin(size: 279.0, middle: 0.2),
            child: IconButton(
              icon: Image.asset('assets/images/top_right.png'),
              iconSize: 50,
              onPressed: () {
                state = 'Top Right';
                print(state);
              },
            ),
          ),
          //Top View
          /*Pinned.fromPins(
            Pin(start: 55.0, end: 55.0),
            Pin(size: 279.0, middle: 0.3571),
            child: IconButton(
              icon: Image.asset('assets/images/Top View.png'),
              iconSize: 50,
              onPressed: () {
                state = 'Top View';
                print(state);
              },
            ),
          ),*/

          //Continue Button
          Pinned.fromPins(
            Pin(size: 125.0, middle: 0.5021),
            Pin(size: 32.0, end: 95.0),
            child: TextButton(
              child: Text('Continue'),
              style: TextButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16.0))),
                backgroundColor: const Color(0xffffffff),
                textStyle: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 12,
                  color: Color(0xFF0B4335),
                  height: 1,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MigrainePain(
                      back_1: const AssetImage('assets/images/back.png'),
                      migraine_big_pain_1:
                          const AssetImage('assets/images/migraine_big.png'),
                      happy_1: const AssetImage('assets/images/happy.png'),
                      mild_1: const AssetImage('assets/images/mild.png'),
                      very_bad_1:
                          const AssetImage('assets/images/very_bad.png'),
                      severe_1: const AssetImage('assets/images/severe.png'),
                      bad_1: const AssetImage('assets/images/bad.png'),
                      sidestate: widget.sidestate,
                      topstate: state,
                    ),
                  ),
                );
              },
            ),
          ),
          //'Back' Button
          Pinned.fromPins(
            Pin(size: 125.0, middle: 0.5021),
            Pin(size: 32.0, end: 43.0),
            child: TextButton(
              child: Text('Back'),
              style: TextButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16.0))),
                backgroundColor: const Color(0xffffffff),
                textStyle: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 12,
                  color: Color(0xFF0B4335),
                  height: 1,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MigraineSide(
                      migraine_big_pain_1:
                          const AssetImage('assets/images/migraine_big.png'),
                      face_side_1:
                          const AssetImage('assets/images/face_side.png'),
                    ),
                  ),
                );
              },
            ),
          ),
          //Back Button
          Pinned.fromPins(
            Pin(size: 27.0, start: 23.0),
            Pin(size: 27.0, start: 40.0),
            child:
                // Adobe XD layer: 'left-arrow' (shape)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => MigraineSide(
                    migraine_big_pain_1:
                        const AssetImage('assets/images/migraine_big.png'),
                    face_side_1:
                        const AssetImage('assets/images/face_side.png'),
                  ),
                ),
              ],
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage('assets/images/back.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
