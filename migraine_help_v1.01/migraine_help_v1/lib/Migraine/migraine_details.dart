// ignore_for_file: non_constant_identifier_names, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_new, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'migraine_pain.dart';
import 'package:adobe_xd/page_link.dart';
import '../Screens/Home/dashboard.dart';

class MigraineDetails extends StatefulWidget {
  final ImageProvider migraine_big_pain_1;
  final String sidestate;
  final String topstate;
  final String painstate;
  MigraineDetails({
    Key? key,
    this.migraine_big_pain_1 =
        const AssetImage('assets/images/migraine_big.png'),
    this.sidestate = '',
    this.topstate = '',
    this.painstate = '',
  }) : super(key: key);
  @override
  _MigraineDetails createState() => _MigraineDetails();
}

class _MigraineDetails extends State<MigraineDetails> {
  String symptom = '';
  String aura = '';
  String trigger = '';
  String duration = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            Pin(size: 120.0, middle: 0.5),
            Pin(size: 21.0, start: 43.0),
            child: Text(
              'Record Migraine ',
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
          //??
          Pinned.fromPins(
            Pin(size: 1.0, middle: 0.7967),
            Pin(size: 2.0, middle: 0.674),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          //Inputs Dropdowns
          //Symptom
          Pinned.fromPins(
            Pin(size: 54.0, middle: 0.2672),
            Pin(size: 16.0, start: 91.7),
            child: Text(
              'Symptom ',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 12,
                color: const Color(0xffffffff),
                height: 1,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 83.5, end: 82.5),
            Pin(size: 1.0, middle: 0.1807),
            child: TextFormField(
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 12,
                color: const Color(0xffffffff),
                height: 1,
              ),
              decoration: InputDecoration(
                hintStyle: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 12,
                    color: const Color(0xffffffff),
                    height: 1),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              onChanged: (val) {
                setState(() => symptom = val);
              },
            ),
          ),
          //Aura
          Pinned.fromPins(
            Pin(size: 33.0, middle: 0.2508),
            Pin(size: 16.0, middle: 0.2324),
            child: Text(
              'Auras ',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 12,
                color: const Color(0xffffffff),
                height: 1,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 83.5, end: 82.5),
            Pin(size: 1.0, middle: 0.2996),
            child: TextFormField(
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 12,
                color: const Color(0xffffffff),
                height: 1,
              ),
              decoration: InputDecoration(
                hintStyle: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 12,
                    color: const Color(0xffffffff),
                    height: 1),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              onChanged: (val) {
                setState(() => aura = val);
              },
            ),
          ),
          //Trigger
          Pinned.fromPins(
            Pin(size: 45.0, middle: 0.2603),
            Pin(size: 16.0, middle: 0.3542),
            child: Text(
              'Triggers ',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 12,
                color: const Color(0xffffffff),
                height: 1,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 82.5, end: 83.5),
            Pin(size: 1.0, middle: 0.4185),
            child: TextFormField(
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 12,
                color: const Color(0xffffffff),
                height: 1,
              ),
              decoration: InputDecoration(
                hintStyle: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 12,
                    color: const Color(0xffffffff),
                    height: 1),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              onChanged: (val) {
                setState(() => trigger = val);
              },
            ),
          ),
          //Duration
          Pinned.fromPins(
            Pin(size: 50.0, middle: 0.2677),
            Pin(size: 16.0, middle: 0.476),
            child: Text(
              'Duration ',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 12,
                color: const Color(0xffffffff),
                height: 1,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 83.5, end: 82.5),
            Pin(size: 1.0, middle: 0.5374),
            child: TextFormField(
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 12,
                color: const Color(0xffffffff),
                height: 1,
              ),
              decoration: InputDecoration(
                hintStyle: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 12,
                    color: const Color(0xffffffff),
                    height: 1),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              onChanged: (val) {
                setState(() => duration = val);
              },
            ),
          ),
          //Confirm Button
          Pinned.fromPins(
            Pin(size: 125.0, middle: 0.5021),
            Pin(size: 32.0, end: 43.0),
            child: TextButton(
              child: Text('Confirm'),
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
                //Add confirmation of the report
                print(widget.sidestate +
                    ' ' +
                    widget.topstate +
                    ' ' +
                    widget.painstate);
                print(symptom + ' ' + aura + ' ' + trigger + ' ' + duration);
              },
            ),
          ),
          //Cancel Button
          Pinned.fromPins(
            Pin(size: 125.0, middle: 0.5021),
            Pin(size: 32.0, end: 95.0),
            child: TextButton(
              child: Text('Cancel'),
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
                //Add confirmation of discardation of the report
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
                  pageBuilder: () => MigrainePain(
                    back_1: const AssetImage('assets/images/back.png'),
                    migraine_big_pain_1:
                        const AssetImage('assets/images/migraine_big.png'),
                    happy_1: const AssetImage('assets/images/happy.png'),
                    mild_1: const AssetImage('assets/images/mild.png'),
                    very_bad_1: const AssetImage('assets/images/very_bad.png'),
                    severe_1: const AssetImage('assets/images/severe.png'),
                    bad_1: const AssetImage('assets/images/bad.png'),
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
