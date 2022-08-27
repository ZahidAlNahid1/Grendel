// ignore_for_file: non_constant_identifier_names, prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'report.dart';
import 'package:adobe_xd/page_link.dart';

class UploadDownload extends StatelessWidget {
  final ImageProvider upload_report_white_1;
  final ImageProvider upload_1;
  final ImageProvider download_1;
  UploadDownload({
    Key? key,
    this.upload_report_white_1 =
        const AssetImage('assets/images/upload_report_white.png'),
    this.upload_1 = const AssetImage('assets/images/upload.png'),
    this.download_1 = const AssetImage('assets/images/download.png'),
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff7dffb1),
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
                // Adobe XD layer: 'file_white' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: upload_report_white_1,
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.1), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          //Title
          Pinned.fromPins(
            Pin(size: 150.0, middle: 0.5),
            Pin(size: 21.0, start: 43.0),
            child: Text(
              'Upload & Download ',
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
                  pageBuilder: () => Report(
                    report_big_1:
                        const AssetImage('assets/images/report_big.png'),
                    migraine_report_1:
                        const AssetImage('assets/images/migraine.png'),
                    cloudy_1: const AssetImage('assets/images/cloudy.png'),
                    activity_1: const AssetImage('assets/images/activity.png'),
                    upload_1: const AssetImage('assets/images/upload.png'),
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
          //Upload Button
          Pinned.fromPins(
            Pin(start: 62.0, end: 61.0),
            Pin(size: 119.0, middle: 0.1792),
            child: TextButton(
              style: TextButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0))),
                backgroundColor: const Color(0xffffffff),
                padding: EdgeInsets.symmetric(vertical: 27.0),
              ),
              child: Column(
                children: <Widget>[
                  ImageIcon(
                    upload_1,
                    size: 48,
                    color: const Color(0xff0b4335),
                  ),
                  Text(
                    'Upload',
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
              onPressed: () {},
            ),
          ),
          //Download Button
          Pinned.fromPins(
            Pin(start: 62.0, end: 61.0),
            Pin(size: 119.0, middle: 0.5086),
            child: TextButton(
              style: TextButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0))),
                backgroundColor: const Color(0xffffffff),
                padding: EdgeInsets.symmetric(vertical: 27.0),
              ),
              child: Column(
                children: <Widget>[
                  ImageIcon(
                    download_1,
                    size: 48,
                    color: const Color(0xff0b4335),
                  ),
                  Text(
                    'Download',
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
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
