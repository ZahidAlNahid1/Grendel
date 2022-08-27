// ignore_for_file: non_constant_identifier_names, prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import '../Screens/Home/dashboard.dart';
import 'package:adobe_xd/page_link.dart';

class Activity extends StatefulWidget {
  final ImageProvider down_arrow_1;
  final ImageProvider activity_big_1;
  Activity({
    Key? key,
    this.down_arrow_1 = const AssetImage('assets/images/down_arrow.png'),
    this.activity_big_1 = const AssetImage('assets/images/activity_big.png'),
  }) : super(key: key);
  @override
  State<Activity> createState() => _Activity();
}

class _Activity extends State<Activity> {
  String type = '';
  String duration = '';
  String location = '';

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
                // Adobe XD layer: 'activity white' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: widget.activity_big_1,
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.1), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          //Title
          Pinned.fromPins(
            Pin(size: 110.0, middle: 0.5),
            Pin(size: 21.0, start: 43.0),
            child:
                // Adobe XD layer: 'Record Activity ' (text)
                Text(
              'Record Activity ',
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
          //Inputs
          //Type
          Pinned.fromPins(
            Pin(size: 70.0, middle: 0.2819),
            Pin(size: 16.0, start: 106.0),
            child: Text(
              'Activity Type',
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
            Pin(start: 83.0, end: 83.0),
            Pin(size: 1.0, middle: 0.2077),
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
                setState(() => type = val);
              },
            ),
          ),
          //Duration
          Pinned.fromPins(
            Pin(size: 92.0, middle: 0.306),
            Pin(size: 16.0, middle: 0.2511),
            child:
                // Adobe XD layer: 'ActivityDuration ' (text)
                Text(
              'Activity Duration',
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
            Pin(start: 83.0, end: 83.0),
            Pin(size: 1.0, middle: 0.3179),
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
          //Location
          Pinned.fromPins(
            Pin(size: 94.0, middle: 0.3102),
            Pin(size: 16.0, middle: 0.3639),
            child: Text(
              'Activity Location',
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
            Pin(start: 83.0, end: 83.0),
            Pin(size: 1.0, middle: 0.4281),
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
                setState(() => location = val);
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
