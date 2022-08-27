// ignore_for_file: non_constant_identifier_names, prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new, constant_identifier_names, unnecessary_const

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:table_calendar/table_calendar.dart';
import 'report.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class ActivityReport extends StatefulWidget {
  final ImageProvider activity_big_1;
  ActivityReport({
    Key? key,
    this.activity_big_1 = const AssetImage('assets/images/activity_big.png'),
  }) : super(key: key);
  @override
  _ActivityReport createState() => _ActivityReport();
}

class _ActivityReport extends State<ActivityReport> {
  final CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xff7dffb1),
      body: Stack(
        children: <Widget>[
          //Background color
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
          //Title
          Pinned.fromPins(
            Pin(size: 108.0, middle: 0.5),
            Pin(size: 21.0, start: 43.0), //Change here
            child: Text(
              'Activity Report',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 16,
                color: Color(0xffffffff),
                height: 0.75,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          //Calendar
          Pinned.fromPins(
            Pin(start: 10.0, end: 10.0),
            Pin(size: 400.0, start: 90.0),
            child: TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: _focusedDay,
              calendarFormat: _calendarFormat,
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = selectedDay;
                });
              },
              onPageChanged: (focusedDay) {
                _focusedDay = focusedDay;
              },
              //Calendar UI
              headerStyle: HeaderStyle(
                titleTextStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 26,
                  color: const Color(0xffffffff),
                  letterSpacing: -0.325,
                  fontWeight: FontWeight.w700,
                  height: 1.4615384615384615,
                ),
                leftChevronIcon: Icon(
                  Icons.chevron_left,
                  color: const Color(0xffffffff),
                  size: 28,
                ),
                rightChevronIcon: Icon(
                  Icons.chevron_right,
                  color: const Color(0xffffffff),
                  size: 28,
                ),
                formatButtonVisible: false,
              ),
              daysOfWeekStyle: const DaysOfWeekStyle(
                weekdayStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 11,
                  color: const Color(0xffffffff),
                  letterSpacing: 0.9999999694824219,
                  fontWeight: FontWeight.w500,
                  height: 1.8181818181818181,
                ),
                weekendStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 11,
                  color: const Color(0xffffffff),
                  letterSpacing: 0.9999999694824219,
                  fontWeight: FontWeight.w500,
                  height: 1.8181818181818181,
                ),
              ),
              calendarStyle: CalendarStyle(
                defaultTextStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 14,
                  color: const Color(0xffffffff),
                  letterSpacing: -0.1999999942779541,
                  fontWeight: FontWeight.w500,
                ),
                weekendTextStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 14,
                  color: const Color(0xffffffff),
                  letterSpacing: -0.1999999942779541,
                  fontWeight: FontWeight.w500,
                ),
                todayDecoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.0),
                  shape: BoxShape.circle,
                ),
                selectedDecoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  shape: BoxShape.circle,
                ),
                todayTextStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 14,
                  color: const Color(0xffffffff),
                  letterSpacing: -0.1999999942779541,
                  fontWeight: FontWeight.w500,
                ),
                selectedTextStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 14,
                  color: const Color(0xff0b4335),
                  letterSpacing: -0.1999999942779541,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          //Line Between Calendar & Date
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 1.0, middle: 0.62),
            child: SvgPicture.string(
              _svg_gxr2j,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          //Date
          Pinned.fromPins(
            Pin(size: 120.0, start: 9.5),
            Pin(size: 21.0, middle: 0.645), //Change here
            child: Text(
              DateFormat('d MMMM y').format(_focusedDay),
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 16,
                color: const Color(0xffffffff),
                height: 1.8125,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          //Line Between Date & Activity
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 1.0, middle: 0.66),
            child: SvgPicture.string(
              _svg_qpvr8z,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_qpvr8z =
    '<svg viewBox="0.0 512.7 360.0 1.0" ><path transform="translate(0.0, 512.73)" d="M 0 0 L 360 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-dasharray="3 3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gxr2j =
    '<svg viewBox="0.0 461.3 360.0 1.0" ><path transform="translate(0.0, 461.35)" d="M 0 0 L 360 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-dasharray="3 3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
