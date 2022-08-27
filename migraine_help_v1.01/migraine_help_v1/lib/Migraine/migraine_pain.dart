// ignore_for_file: non_constant_identifier_names, prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'migraine_top.dart';
import 'package:adobe_xd/page_link.dart';
import 'migraine_details.dart';

class MigrainePain extends StatefulWidget {
  final ImageProvider back_1;
  final ImageProvider migraine_big_pain_1;
  final ImageProvider happy_1;
  final ImageProvider mild_1;
  final ImageProvider very_bad_1;
  final ImageProvider severe_1;
  final ImageProvider bad_1;
  final String sidestate;
  final String topstate;
  MigrainePain({
    Key? key,
    this.back_1 = const AssetImage('assets/images/back.png'),
    this.migraine_big_pain_1 =
        const AssetImage('assets/images/migraine_big.png'),
    this.happy_1 = const AssetImage('assets/images/happy.png'),
    this.mild_1 = const AssetImage('assets/images/mild.png'),
    this.very_bad_1 = const AssetImage('assets/images/very_bad.png'),
    this.severe_1 = const AssetImage('assets/images/severe.png'),
    this.bad_1 = const AssetImage('assets/images/bad.png'),
    this.sidestate = '',
    this.topstate = '',
  }) : super(key: key);
  @override
  _MigrainePainState createState() => _MigrainePainState();
}

class _MigrainePainState extends State<MigrainePain> {
  bool pressed = false;
  bool pressed1 = false;
  bool pressed2 = false;
  bool pressed3 = false;
  bool pressed4 = false;
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
            Pin(size: 98.0, middle: 0.5),
            Pin(size: 21.0, start: 43.0),
            child: Text(
              'Pain Intensity ',
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
          //Pain Values
          //Severe
          Pinned.fromPins(
            Pin(size: 140.0, middle: 0.3500),
            Pin(size: 50.0, middle: 0.1774),
            child: TextButton(
              child: Row(
                children: <Widget>[
                  ImageIcon(
                    widget.severe_1,
                    size: 50,
                    color:
                        pressed ? Color(0xFF000000) : const Color(0xffffffff),
                  ),
                  Text(
                    ' Severe',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 16,
                      color:
                          pressed ? Color(0xFF000000) : const Color(0xffffffff),
                      height: 0.5,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              onPressed: () {
                setState(() {
                  pressed = !pressed;
                });
                state = 'Severe';
              },
            ),
          ),
          //Very Bad
          Pinned.fromPins(
            Pin(size: 140.0, middle: 0.3500),
            Pin(size: 50.0, middle: 0.3045),
            child: TextButton(
              child: Row(
                children: <Widget>[
                  ImageIcon(
                    widget.very_bad_1,
                    size: 50,
                    color:
                        pressed1 ? Color(0xFF000000) : const Color(0xffffffff),
                  ),
                  Text(
                    ' Very Bad',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 16,
                      color: pressed1
                          ? Color(0xFF000000)
                          : const Color(0xffffffff),
                      height: 0.5,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              onPressed: () {
                setState(() {
                  pressed1 = !pressed1;
                });
                state = 'Very Bad';
              },
            ),
          ),
          //Bad
          Pinned.fromPins(
            Pin(size: 140.0, middle: 0.3500),
            Pin(size: 50.0, middle: 0.4316),
            child: TextButton(
              child: Row(
                children: <Widget>[
                  ImageIcon(
                    widget.bad_1,
                    size: 50,
                    color:
                        pressed2 ? Color(0xFF000000) : const Color(0xffffffff),
                  ),
                  Text(
                    ' Bad',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 16,
                      color: pressed2
                          ? Color(0xFF000000)
                          : const Color(0xffffffff),
                      height: 0.5,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              onPressed: () {
                setState(() {
                  pressed2 = !pressed2;
                });
                state = 'Bad';
              },
            ),
          ),
          //Mild
          Pinned.fromPins(
            Pin(size: 140.0, middle: 0.3500),
            Pin(size: 50.0, middle: 0.5587),
            child: TextButton(
              child: Row(
                children: <Widget>[
                  ImageIcon(
                    widget.mild_1,
                    size: 50,
                    color:
                        pressed3 ? Color(0xFF000000) : const Color(0xffffffff),
                  ),
                  Text(
                    ' Mild',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 16,
                      color: pressed3
                          ? Color(0xFF000000)
                          : const Color(0xffffffff),
                      height: 0.5,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              onPressed: () {
                setState(() {
                  pressed3 = !pressed3;
                });
                state = 'Mild';
              },
            ),
          ),
          //Happy
          Pinned.fromPins(
            Pin(size: 140.0, middle: 0.3500),
            Pin(size: 50.0, middle: 0.6858),
            child: TextButton(
              child: Row(
                children: <Widget>[
                  ImageIcon(
                    widget.happy_1,
                    size: 50,
                    color:
                        pressed4 ? Color(0xFF000000) : const Color(0xffffffff),
                  ),
                  Text(
                    ' Happy',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 16,
                      color: pressed4
                          ? Color(0xFF000000)
                          : const Color(0xffffffff),
                      height: 0.5,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              onPressed: () {
                setState(() {
                  pressed4 = !pressed4;
                });
                state = 'Happy';
              },
            ),
          ),
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
                  color: Color.fromARGB(255, 11, 67, 53),
                  height: 1,
                ),
              ),
              onPressed: () {
                //Add confirmation
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MigraineDetails(
                      migraine_big_pain_1:
                          const AssetImage('assets/images/migraine_big.png'),
                      sidestate: widget.sidestate,
                      topstate: widget.topstate,
                      painstate: state,
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
                  color: Color.fromARGB(255, 11, 67, 53),
                  height: 1,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MigraineTop(
                      migraine_big_pain_1:
                          const AssetImage('assets/images/migraine_big.png'),
                      head_top_1:
                          const AssetImage('assets/images/head_top.png'),
                    ),
                  ),
                );
              },
            ),
          ),
          //Back Icon Button
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
                  pageBuilder: () => MigraineTop(
                    migraine_big_pain_1:
                        const AssetImage('assets/images/migraine_big.png'),
                    head_top_1: const AssetImage('assets/images/head_top.png'),
                  ),
                ),
              ],
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: widget.back_1,
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
