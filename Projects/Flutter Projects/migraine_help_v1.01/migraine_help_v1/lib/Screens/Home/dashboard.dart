// ignore_for_file: non_constant_identifier_names, prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import '../../Side_Menu/side_menu.dart';
import 'package:adobe_xd/page_link.dart';
import '../../Notifications/notification_menu.dart';
import '../../Migraine/migraine_side.dart';
import '../../Activity/activity.dart';
import '../../Report/report.dart';
import '../../Weather/weather_page1.dart';
import 'package:migraine_help_v1/Services/database.dart';
import 'package:provider/provider.dart';
import 'package:migraine_help_v1/Models/migraine.dart';

class Dashboard extends StatelessWidget {
  final ImageProvider activity_menu;
  final ImageProvider report_1;
  final ImageProvider smile_dashboard_main;
  Dashboard({
    Key? key,
    this.activity_menu = const AssetImage('assets/images/activity.png'),
    this.report_1 = const AssetImage('assets/images/report.png'),
    this.smile_dashboard_main =
        const AssetImage('assets/images/smile_dashboard.png'),
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Migraine>>.value(
      value: DatabaseService.withoutUID().migraine,
      initialData: [],
      child: Scaffold(
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
            //Title
            Pinned.fromPins(
              Pin(size: 104.0, middle: 0.5078),
              Pin(size: 21.0, start: 43.0),
              child: Text(
                'Migraine Help ',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 16,
                  color: const Color(0xffffffff),
                  height: 0.75,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.left,
              ),
            ),
            //Side Menu Icon Button
            Pinned.fromPins(
              Pin(size: 27.0, start: 23.0),
              Pin(size: 27.0, start: 40.0),
              child:
                  // Adobe XD layer: 'menu' (shape)
                  PageLink(
                links: [
                  PageLinkInfo(
                    transition: LinkTransition.Fade,
                    ease: Curves.easeOut,
                    duration: 0.3,
                    pageBuilder: () => SideMenu(
                      activity_menu:
                          const AssetImage('assets/images/activity.png'),
                      report_1: const AssetImage('assets/images/report.png'),
                      smile_dashboard_main:
                          const AssetImage('assets/images/smile_dashboard.png'),
                      human_icon_1:
                          const AssetImage('assets/images/human_icon.png'),
                      location_1:
                          const AssetImage('assets/images/location.png'),
                      settings_1:
                          const AssetImage('assets/images/settings.png'),
                      logout_1: const AssetImage('assets/images/logout.png'),
                      help_1: const AssetImage('assets/images/help.png'),
                      aboutus_1: const AssetImage('assets/images/aboutus.png'),
                    ),
                  ),
                ],
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage('assets/images/side_menu.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            //Notification Icon Button
            Pinned.fromPins(
              Pin(size: 27.0, end: 23.0),
              Pin(size: 27.0, start: 40.0),
              child:
                  // Adobe XD layer: 'notification-bell' (shape)
                  PageLink(
                links: [
                  PageLinkInfo(
                    transition: LinkTransition.Fade,
                    ease: Curves.easeOut,
                    duration: 0.3,
                    pageBuilder: () => NotificationMenu(
                      notification_white_1: const AssetImage(
                          'assets/images/notification_white.png'),
                    ),
                  ),
                ],
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage(
                          'assets/images/notification_white.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            //Header Box
            Pinned.fromPins(
              Pin(start: 60.0, end: 60.0),
              Pin(size: 119.0, middle: 0.1807),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: const Color(0xffffffff),
                ),
              ),
            ),
            //Header Icon
            Pinned.fromPins(
              Pin(size: 48.0, middle: 0.5),
              Pin(size: 48.0, middle: 0.1878),
              child:
                  // Adobe XD layer: 'smiley' (shape)
                  Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: smile_dashboard_main,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            //Header Text
            Pinned.fromPins(
              Pin(size: 144.0, middle: 0.5093),
              Pin(size: 31.0, middle: 0.2593),
              child: Text(
                'Hello Zahid Al Nahid,\nStay Healthy, Stay Safe ',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 14,
                  color: const Color(0xff0b4335),
                  height: 0.8571428571428571,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.center,
              ),
            ),
            //Record Migraine Button
            Pinned.fromPins(
              Pin(size: 104.0, middle: 0.2344),
              Pin(size: 104.0, middle: 0.4418),
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0))),
                  backgroundColor: const Color(0xffffffff),
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                ),
                child: Column(
                  children: <Widget>[
                    ImageIcon(
                      const AssetImage('assets/images/migraine.png'),
                      size: 48,
                      color: const Color(0xff0b4335),
                    ),
                    Text(
                      'Record\nMigraine',
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
            //Record Activity Button
            Pinned.fromPins(
              Pin(size: 104.0, middle: 0.7656),
              Pin(size: 104.0, middle: 0.4418),
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0))),
                  backgroundColor: const Color(0xffffffff),
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                ),
                child: Column(
                  children: <Widget>[
                    ImageIcon(
                      activity_menu,
                      size: 48,
                      color: const Color(0xff0b4335),
                    ),
                    Text(
                      'Record \nActivity',
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
                      builder: (context) => Activity(
                        down_arrow_1:
                            const AssetImage('assets/images/down_arrow.png'),
                        activity_big_1:
                            const AssetImage('assets/images/activity_big.png'),
                      ),
                    ),
                  );
                },
              ),
            ),
            //Report Button
            Pinned.fromPins(
              Pin(size: 104.0, middle: 0.7617),
              Pin(size: 104.0, middle: 0.6834),
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0))),
                  backgroundColor: const Color(0xffffffff),
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                ),
                child: Column(
                  children: <Widget>[
                    ImageIcon(
                      report_1,
                      size: 48,
                      color: const Color(0xff0b4335),
                    ),
                    Text(
                      'Report',
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
                      builder: (context) => Report(
                        report_big_1:
                            const AssetImage('assets/images/report_big.png'),
                        migraine_report_1:
                            const AssetImage('assets/images/migraine.png'),
                        cloudy_1: const AssetImage('assets/images/cloudy.png'),
                        activity_1:
                            const AssetImage('assets/images/activity.png'),
                        upload_1: const AssetImage('assets/images/upload.png'),
                      ),
                    ),
                  );
                },
              ),
            ),
            //Weather Button
            Pinned.fromPins(
              Pin(size: 104.0, middle: 0.2344),
              Pin(size: 104.0, middle: 0.6834),
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0))),
                  backgroundColor: const Color(0xffffffff),
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                ),
                child: Column(
                  children: <Widget>[
                    ImageIcon(
                      const AssetImage('assets/images/cloudy.png'),
                      size: 48,
                      color: const Color(0xff0b4335),
                    ),
                    Text(
                      'Weather',
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
                      builder: (context) => WeatherPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        // something missing here
      ),
    );
  }
}
