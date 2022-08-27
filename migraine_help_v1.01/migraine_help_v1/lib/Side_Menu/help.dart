// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'side_menu.dart';
import 'package:adobe_xd/page_link.dart';

class Help extends StatelessWidget {
  final ImageProvider help_1;
  Help({
    Key? key,
    this.help_1 = const AssetImage('assets/images/help.png'),
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
          Pinned.fromPins(
            Pin(size: 38.0, middle: 0.5),
            Pin(size: 21.0, start: 43.0),
            child: Text(
              'Help ',
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
                  pageBuilder: () => SideMenu(
                    activity_menu:
                        const AssetImage('assets/images/activity.png'),
                    report_1: const AssetImage('assets/images/report.png'),
                    smile_dashboard_main:
                        const AssetImage('assets/images/smile_dashboard.png'),
                    human_icon_1:
                        const AssetImage('assets/images/human_icon.png'),
                    location_1: const AssetImage('assets/images/location.png'),
                    settings_1: const AssetImage('assets/images/settings.png'),
                    logout_1: const AssetImage('assets/images/logout.png'),
                    help_1: const AssetImage('assets/images/help.png'),
                    aboutus_1: const AssetImage('assets/images/aboutus.png'),
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
          Pinned.fromPins(
            Pin(start: 10.0, end: 10.0),
            Pin(size: 340.0, start: 95.0),
            child:
                // Adobe XD layer: 'Help' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: help_1,
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.1), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(startFraction: 0.1056, endFraction: 0.1028),
            Pin(size: 135.0, middle: 0.2436),
            child: Text(
              'Forget username or password? \nPlease contact the helpline listed below and provide\nemail ID to retrieve password. \n\nChange profile information? \nGo to profile section of the application from the side menu\nand change settings there. ',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 11,
                color: const Color(0xffffffff),
                height: 1.8181818181818181,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
