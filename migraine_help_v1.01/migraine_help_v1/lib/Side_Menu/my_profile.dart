// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'side_menu.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyProfile extends StatelessWidget {
  final ImageProvider human_icon_1;
  final String SignUsername;
  final String SignEmailID;
  final String SignPassword;
  const MyProfile({
    Key? key,
    this.human_icon_1 = const AssetImage('assets/images/human_icon.png'),
    this.SignUsername = 'Email: ',
    this.SignEmailID = 'Full Name: ',
    this.SignPassword = 'Password:  ',
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
            Pin(size: 76.0, middle: 0.5),
            Pin(size: 21.0, start: 43.0),
            child: Text(
              'My Profile ',
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
          //Background Image
          Pinned.fromPins(
            Pin(start: 10.0, end: 10.0),
            Pin(size: 340.0, start: 95.0),
            child:
                // Adobe XD layer: 'user' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: human_icon_1,
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.1), BlendMode.dstIn),
                ),
              ),
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
          //?? Input Line
          Pinned.fromPins(
            Pin(start: 83.5, end: 82.5),
            Pin(size: 1.0, middle: 0.2263),
            child: SvgPicture.string(
              _svg_t52f,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          //Email Text
          Pinned.fromPins(
            Pin(size: 65.0, middle: 0.2814),
            Pin(size: 16.0, start: 121.0),
            child: Text(
              SignUsername,
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
          //Fullname Text
          Pinned.fromPins(
            Pin(size: 59.0, middle: 0.2757),
            Pin(size: 16.0, middle: 0.2829),
            child: Text(
              SignEmailID,
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
          //?? Input Line
          Pinned.fromPins(
            Pin(start: 83.0, end: 83.0),
            Pin(size: 1.0, middle: 0.3491),
            child: SvgPicture.string(
              _svg_kun7sh,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          //Password Text
          Pinned.fromPins(
            Pin(size: 59.0, middle: 0.2757),
            Pin(size: 16.0, middle: 0.4081),
            child: Text(
              SignPassword,
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
          //?? Input Line
          Pinned.fromPins(
            Pin(start: 83.0, end: 83.0),
            Pin(size: 1.0, middle: 0.4719),
            child: SvgPicture.string(
              _svg_iq5uep,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 34.0, middle: 0.2546),
            Pin(size: 16.0, middle: 0.5332),
            child: Text(
              SignUsername,
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
            Pin(size: 1.0, middle: 0.5946),
            child: SvgPicture.string(
              _svg_gxvsvl,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          //Edit Button
          Pinned.fromPins(
            Pin(size: 125.0, middle: 0.5021),
            Pin(size: 32.0, middle: 0.8191),
            child: TextButton(
              child: Text('Edit'),
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
              onPressed: () {},
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
        ],
      ),
    );
  }
}

const String _svg_t52f =
    '<svg viewBox="83.5 177.0 194.0 1.0" ><path transform="translate(83.5, 177.0)" d="M 0 0 L 194 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_kun7sh =
    '<svg viewBox="83.0 273.0 194.0 1.0" ><path transform="translate(83.0, 273.0)" d="M 0 0 L 194 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_iq5uep =
    '<svg viewBox="83.0 369.0 194.0 1.0" ><path transform="translate(83.0, 369.0)" d="M 0 0 L 194 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gxvsvl =
    '<svg viewBox="83.0 465.0 194.0 1.0" ><path transform="translate(83.0, 465.0)" d="M 0 0 L 194 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
