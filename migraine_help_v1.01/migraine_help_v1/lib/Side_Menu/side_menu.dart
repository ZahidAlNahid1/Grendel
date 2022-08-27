// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import '../Notifications/notification_menu.dart';
import 'package:adobe_xd/page_link.dart';
import 'my_profile.dart';
import 'change_location.dart';
import 'help.dart';
import 'about_us.dart';
import '../Settings/settings.dart';
import '../Screens/Home/dashboard.dart';
import '../Activity/activity.dart';
import '../Migraine/migraine_side.dart';
import '../Report/report.dart';
import '../Weather/weather_page1.dart';
import '../Services/auth.dart';

class SideMenu extends StatelessWidget {
  final ImageProvider activity_menu;
  final ImageProvider report_1;
  final ImageProvider smile_dashboard_main;
  final ImageProvider human_icon_1;
  final ImageProvider location_1;
  final ImageProvider settings_1;
  final ImageProvider logout_1;
  final ImageProvider help_1;
  final ImageProvider aboutus_1;
  final Authservice _auth = Authservice();
  SideMenu({
    Key? key,
    this.activity_menu = const AssetImage('assets/images/activity.png'),
    this.report_1 = const AssetImage('assets/images/report.png'),
    this.smile_dashboard_main =
        const AssetImage('assets/images/smile_dashboard.png'),
    this.human_icon_1 = const AssetImage('assets/images/human_icon.png'),
    this.location_1 = const AssetImage('assets/images/location.png'),
    this.settings_1 = const AssetImage('assets/images/settings.png'),
    this.logout_1 = const AssetImage('assets/images/logout.png'),
    this.help_1 = const AssetImage('assets/images/help.png'),
    this.aboutus_1 = const AssetImage('assets/images/aboutus.png'),
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
          //Title
          Pinned.fromPins(
            Pin(size: 104.0, middle: 0.5),
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
          //Dashboard Stuff
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
          //Side Menu Background
          Pinned.fromPins(
            Pin(size: 210.0, start: 0.0),
            Pin(start: 100.0, end: 0.0),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.0, -1.0),
                  end: Alignment(0.0, 1.0),
                  colors: [
                    const Color(0xff26b1c1),
                    const Color(0xff25c5ab),
                    const Color(0xff0eb594),
                    const Color(0xff17bc9a)
                  ],
                  stops: [0.0, 0.0, 1.0, 1.0],
                ),
              ),
            ),
          ),
          //My Profile Button
          Pinned.fromPins(
            Pin(size: 120.0, start: 20.0),
            Pin(size: 40.0, start: 116.0),
            child: TextButton(
              child: Row(
                children: <Widget>[
                  ImageIcon(
                    human_icon_1,
                    size: 27,
                    color: const Color(0xffffffff),
                  ),
                  Text(
                    ' My Profile',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 16,
                      color: const Color(0xffffffff),
                      height: 0.5,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyProfile(
                      human_icon_1:
                          const AssetImage('assets/images/human_icon.png'),
                      SignUsername: 'Email: ',
                      SignEmailID: 'Full Name: ',
                      SignPassword: 'Password:  ',
                    ),
                  ),
                );
              },
            ),
          ),
          //Change Location Button
          Pinned.fromPins(
            Pin(size: 170.0, start: 20.0),
            Pin(size: 40.0, middle: 0.2169),
            child: TextButton(
              child: Row(
                children: <Widget>[
                  ImageIcon(
                    location_1,
                    size: 27,
                    color: const Color(0xffffffff),
                  ),
                  Text(
                    ' Change Location',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 16,
                      color: const Color(0xffffffff),
                      height: 0.5,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChangeLocation(
                      location_big:
                          const AssetImage('assets/images/location.png'),
                    ),
                  ),
                );
              },
            ),
          ),
          //Help Button
          Pinned.fromPins(
            Pin(size: 120.0, start: 20.0), //Might need to play
            Pin(size: 40.0, middle: 0.2804), //Might need to play
            child: TextButton(
              child: Row(
                children: <Widget>[
                  ImageIcon(
                    help_1,
                    size: 27,
                    color: const Color(0xffffffff),
                  ),
                  Text(
                    ' Help',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 16,
                      color: const Color(0xffffffff),
                      height: 0.5,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Help(
                      help_1: const AssetImage('assets/images/help.png'),
                    ),
                  ),
                );
              },
            ),
          ),
          //About Us Button
          Pinned.fromPins(
            Pin(size: 120.0, start: 20.0), //Might need to play
            Pin(size: 40.0, middle: 0.3439), //Might need to play
            child: TextButton(
              child: Row(
                children: <Widget>[
                  ImageIcon(
                    aboutus_1,
                    size: 27,
                    color: const Color(0xffffffff),
                  ),
                  Text(
                    ' About Us',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 16,
                      color: const Color(0xffffffff),
                      height: 0.5,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutUs(
                      aboutus_1: const AssetImage('assets/images/aboutus.png'),
                    ),
                  ),
                );
              },
            ),
          ),
          //Settings Button
          Pinned.fromPins(
            Pin(size: 120.0, start: 20.0), //Might need to play
            Pin(size: 40.0, middle: 0.4074), //Might need to play
            child: TextButton(
              child: Row(
                children: <Widget>[
                  ImageIcon(
                    settings_1,
                    size: 27,
                    color: const Color(0xffffffff),
                  ),
                  Text(
                    ' Settings',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 16,
                      color: const Color(0xffffffff),
                      height: 0.5,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Settings(
                      settings_1:
                          const AssetImage('assets/images/settings.png'),
                    ),
                  ),
                );
              },
            ),
          ),
          //Logout Button
          Pinned.fromPins(
            Pin(size: 120.0, start: 20.0), //Might need to play
            Pin(size: 40.0, middle: 0.4709), //Might need to play
            child: TextButton(
                child: Row(
                  children: <Widget>[
                    ImageIcon(
                      logout_1,
                      size: 27,
                      color: const Color(0xffffffff),
                    ),
                    Text(
                      ' Log Out',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 16,
                        color: const Color(0xffffffff),
                        height: 0.5,
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                onPressed: () async {
                  await _auth.signOut();
                  if (kDebugMode) {
                    print('signed out');
                  }

                  /*Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LogIn(
                          human_icon_1:
                              const AssetImage('assets/images/human_icon.png'),
                          MigrainHelpTitle: 'Migraine Help ',
                        ),
                      ));*/
                }),
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
        ],
      ),
    );
  }
}
