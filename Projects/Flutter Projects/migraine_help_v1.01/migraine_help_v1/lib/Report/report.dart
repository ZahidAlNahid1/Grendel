// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import '../Screens/Home/dashboard.dart';
import 'package:adobe_xd/page_link.dart';
import 'activity_report.dart';
import 'weather_report.dart';
import 'upload_download.dart';
import 'migraine_report.dart';

class Report extends StatelessWidget {
  final ImageProvider report_big_1;
  final ImageProvider migraine_report_1;
  final ImageProvider cloudy_1;
  final ImageProvider activity_1;
  final ImageProvider upload_1;
  const Report({
    Key? key,
    this.report_big_1 = const AssetImage('assets/images/report_big.png'),
    this.migraine_report_1 = const AssetImage('assets/images/migraine.png'),
    this.cloudy_1 = const AssetImage('assets/images/cloudy.png'),
    this.activity_1 = const AssetImage('assets/images/activity.png'),
    this.upload_1 = const AssetImage('assets/images/upload.png'),
  }) : super(key: key);
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
                // Adobe XD layer: 'medical-report White' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: report_big_1,
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.1), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          //Title
          Pinned.fromPins(
            Pin(size: 52.0, middle: 0.5),
            Pin(size: 21.0, start: 43.0),
            child: Text(
              'Report ',
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
          //Activity Report Button
          Pinned.fromPins(
            Pin(size: 110.0, middle: 0.246),
            Pin(size: 110.0, middle: 0.1951),
            child: TextButton(
              style: TextButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0))),
                backgroundColor: const Color(0xffffffff),
                padding: EdgeInsets.symmetric(vertical: 15.0),
              ),
              child: Column(
                children: <Widget>[
                  ImageIcon(
                    activity_1,
                    size: 48,
                    color: const Color(0xff0b4335),
                  ),
                  Text(
                    'Activity \nReport',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 12,
                      color: const Color(0xff0b4335),
                      height: 1,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ActivityReport(
                      activity_big_1:
                          const AssetImage('assets/images/activity_big.png'),
                    ),
                  ),
                );
              },
            ),
          ),
          //Migraine Report Button
          Pinned.fromPins(
            Pin(size: 110.0, middle: 0.778),
            Pin(size: 110.0, middle: 0.1951),
            child: TextButton(
              style: TextButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0))),
                backgroundColor: const Color(0xffffffff),
                padding: EdgeInsets.symmetric(vertical: 15.0),
              ),
              child: Column(
                children: <Widget>[
                  ImageIcon(
                    migraine_report_1,
                    size: 48,
                    color: const Color(0xff0b4335),
                  ),
                  Text(
                    'Migraine \nReport',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 12,
                      color: const Color(0xff0b4335),
                      height: 1,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MigraineReport(
                      face_side_2:
                          const AssetImage('assets/images/face_side.png'),
                      head_top_2:
                          const AssetImage('assets/images/head_top.png'),
                      migraine_big_pain_1:
                          const AssetImage('assets/images/migraine_big.png'),
                    ),
                  ),
                );
              },
            ),
          ),
          //Weather Report Button
          Pinned.fromPins(
            Pin(size: 110.0, middle: 0.246),
            Pin(size: 110.0, middle: 0.4661),
            child: TextButton(
              style: TextButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0))),
                backgroundColor: const Color(0xffffffff),
                padding: EdgeInsets.symmetric(vertical: 15.0),
              ),
              child: Column(
                children: <Widget>[
                  ImageIcon(
                    cloudy_1,
                    size: 48,
                    color: const Color(0xff0b4335),
                  ),
                  Text(
                    'Weather \nReport',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 12,
                      color: const Color(0xff0b4335),
                      height: 1,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WeatherReport(
                      cloudy_big_1:
                          const AssetImage('assets/images/cloudy_big.png'),
                    ),
                  ),
                );
              },
            ),
          ),
          //Upload & Download Button
          Pinned.fromPins(
            Pin(size: 110.0, middle: 0.778),
            Pin(size: 110.0, middle: 0.4661),
            child: TextButton(
              style: TextButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0))),
                backgroundColor: const Color(0xffffffff),
                padding: EdgeInsets.symmetric(vertical: 15.0),
              ),
              child: Column(
                children: <Widget>[
                  ImageIcon(
                    upload_1,
                    size: 48,
                    color: const Color(0xff0b4335),
                  ),
                  Text(
                    'Upload & \n Download',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 12,
                      color: const Color(0xff0b4335),
                      height: 1,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UploadDownload(
                      upload_report_white_1: const AssetImage(
                          'assets/images/upload_report_white.png'),
                      upload_1: const AssetImage('assets/images/upload.png'),
                      download_1:
                          const AssetImage('assets/images/download.png'),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
