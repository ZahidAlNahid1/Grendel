// ignore_for_file: non_constant_identifier_names, prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import '../Screens/Home/dashboard.dart';
import 'package:adobe_xd/page_link.dart';
import 'migraine_top.dart';

class MigraineSide extends StatefulWidget {
  final ImageProvider migraine_big_pain_1;
  final ImageProvider face_side_1;
  MigraineSide({
    Key? key,
    this.migraine_big_pain_1 =
        const AssetImage('assets/images/migraine_big.png'),
    this.face_side_1 = const AssetImage('assets/images/face_side.png'),
  }) : super(key: key);
  @override
  _MigraineSideState createState() => _MigraineSideState();
}

class _MigraineSideState extends State<MigraineSide> {
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
          //Side View
          Pinned.fromPins(
            Pin(size: 135.0, middle: 0.62),
            Pin(size: 300.0, middle: 0.33),
            child: IconButton(
              icon: Image.asset('assets/images/side_view.png'),
              iconSize: 50,
              onPressed: () {
                state = 'Side View';
                print(state);
              },
            ),
          ),
          //Side Eye
          Pinned.fromPins(
            Pin(size: 80.0, middle: 0.3),
            Pin(size: 300.0, middle: 0.33),
            child: IconButton(
              icon: Image.asset('assets/images/side_eye.png'),
              iconSize: 50,
              onPressed: () {
                state = 'Side Eye';
                print(state);
              },
            ),
          ),
          //Side Forehead
          Pinned.fromPins(
            Pin(size: 200.0, middle: 0.5),
            Pin(size: 300.0, middle: 0.195),
            child: IconButton(
              icon: Image.asset('assets/images/side_forehead.png'),
              iconSize: 50,
              onPressed: () {
                state = 'Side Forehead';
                print(state);
              },
            ),
          ),
          //Side Jaw
          Pinned.fromPins(
            Pin(size: 270.0, middle: 0.4),
            Pin(size: 300.0, middle: 0.51),
            child: IconButton(
              icon: Image.asset('assets/images/side_jaw.png'),
              iconSize: 50,
              onPressed: () {
                state = 'Side Jaw';
                print(state);
              },
            ),
          ),
          //Tooth
          Pinned.fromPins(
            Pin(size: 40.0, middle: 0.36),
            Pin(size: 300.0, middle: 0.42),
            child: IconButton(
              icon: Image.asset('assets/images/tooth.png'),
              iconSize: 50,
              onPressed: () {
                state = 'Tooth';
                print(state);
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MigraineTop(
                      migraine_big_pain_1:
                          const AssetImage('assets/images/migraine_big.png'),
                      head_top_1:
                          const AssetImage('assets/images/head_top.png'),
                      sidestate: state,
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
                    builder: (context) => Dashboard(
                      activity_menu:
                          const AssetImage('assets/images/activity.png'),
                      report_1: const AssetImage('assets/images/report.png'),
                      smile_dashboard_main:
                          const AssetImage('assets/images/smile_dashboard.png'),
                    ),
                  ),
                );
              },
            ),
          ),
          //Back Button
          Pinned.fromPins(
            Pin(size: 27.0, start: 22.0),
            Pin(size: 27.0, start: 40.0),
            child:
                // Adobe XD layer: 'left-arrow' (shape)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Dashboard(
                    activity_menu:
                        const AssetImage('assets/images/activity.png'),
                    report_1: const AssetImage('assets/images/report.png'),
                    smile_dashboard_main:
                        const AssetImage('assets/images/smile_dashboard.png'),
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
