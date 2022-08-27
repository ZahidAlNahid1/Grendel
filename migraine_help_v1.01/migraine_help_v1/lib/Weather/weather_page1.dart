// ignore_for_file: non_constant_identifier_names, prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, constant_identifier_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import '../Services/weather_dataset.dart';
import '../Screens/Home/dashboard.dart';
import 'package:migraine_help_v1/Services/weather_dataset.dart';

Weather? currentTemp;

class WeatherPage extends StatefulWidget {
  WeatherPage({
    Key? key,
  }) : super(key: key);
  @override
  WeatherPageState createState() => WeatherPageState();
}

class WeatherPageState extends State<WeatherPage> {
  getData() async {
    fetchData("2.9198", "101.7809", "Bangi").then((value) {
      currentTemp = value[0];
      print(currentTemp);
      setState(() {});
      print(currentTemp?.image);
      print(currentTemp?.wind);
      print(currentTemp?.humidity);
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff030317), body: CurrentWeather(getData));
  }
}

class CurrentWeather extends StatefulWidget {
  final Function() updateData;
  CurrentWeather(this.updateData);

  @override
  CurrentWeatherState createState() => CurrentWeatherState();
}

class CurrentWeatherState extends State<CurrentWeather> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

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
                // Adobe XD layer: 'cloudy White' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      (currentTemp?.image ?? "assets/images/rain.png")),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.1), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          //Title
          Pinned.fromPins(
            Pin(size: 60.0, middle: 0.5),
            Pin(size: 21.0, start: 43.0),
            child: Text(
              'Weather',
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
          //Day
          Pinned.fromPins(
            Pin(size: 194.0, middle: 0.5),
            Pin(size: 40.0, start: 95.0),
            child: Text(
              DateFormat('d MMMM').format(_focusedDay),
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 30,
                color: const Color(0xffffffff),
                height: 0.4,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          //Time
          Pinned.fromPins(
            Pin(size: 200.0, middle: 0.5),
            Pin(size: 80.0, middle: 0.2192),
            child:
                // Adobe XD layer: '2:30 PM ' (text)
                Text(
              DateFormat('jm').format(DateTime.now()),
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 40,
                color: const Color(0xffffffff),
                height: 1,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          //Weather Text
          Pinned.fromPins(
            Pin(size: 68.0, middle: 0.4726),
            Pin(size: 27.0, middle: 0.3042),
            child: Text(
              currentTemp?.name.toString() ?? '', //Link to dataset
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0xffffffff),
                height: 0.6,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          //Weather Image
          Pinned.fromPins(
            Pin(size: 150.0, middle: 0.5),
            Pin(size: 150.0, middle: 0.4423),
            child:
                // Adobe XD layer: 'cloudy White' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage((currentTemp?.image ??
                      "assets/images/rain.png") /*"assets/images/rain.png"*/), //Link to dataset // Problem here
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          //Wind Text
          Pinned.fromPins(
            Pin(size: 104.0, middle: 0.2695),
            Pin(size: 53.0, middle: 0.6438),
            child: Text(
              'Wind ',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 40,
                color: const Color(0xffffffff),
                height: 0.3,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          //Wind Direction Text
          Pinned.fromPins(
            Pin(size: 114.0, middle: 0.2358),
            Pin(size: 40.0, middle: 0.6955),
            child: Text(
              "Direction " + (currentTemp?.degree ?? ""), //Link to dataset
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 16,
                color: const Color(0xffffffff),
                height: 1.3,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          //Wind Speed Text
          Pinned.fromPins(
            Pin(size: 102.0, middle: 0.2674),
            Pin(size: 21.0, middle: 0.7349),
            child: Text(
              (currentTemp?.wind.toString() ?? "") + " Kmph", //Link to dataset
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
          //Line...
          Pinned.fromPins(
            Pin(size: 1.0, middle: 0.5028),
            Pin(size: 100.0, middle: 0.7028),
            child: SvgPicture.string(
              _svg_wd336p,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          //Temp
          Pinned.fromPins(
            Pin(size: 94.0, middle: 0.7274),
            Pin(size: 53.0, middle: 0.6438),
            child: Text(
              (currentTemp?.current.toString() ?? "") +
                  "\u00B0" +
                  "C", //Link to dataset
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 40,
                color: const Color(0xffffffff),
                height: 0.3,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          //Humidity text
          Pinned.fromPins(
            Pin(size: 68.0, middle: 0.6952),
            Pin(size: 21.0, middle: 0.6955),
            child: Text(
              'Humidity ',
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
          //Actual Humidity
          Pinned.fromPins(
            Pin(size: 34.0, middle: 0.6748),
            Pin(size: 21.0, middle: 0.7349),
            child: Text(
              (currentTemp?.humidity.toString() ?? "") + "%", //Link to dataset
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
          //Today in words
          Pinned.fromPins(
            Pin(size: 200.0, middle: 0.5),
            Pin(size: 40.0, middle: 0.85),
            child: Text(
              DateFormat('EEEE').format(_focusedDay),
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 30,
                color: const Color(0xffffffff),
                height: 0.4,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          //Calendar
          Pinned.fromPins(
            Pin(start: 10.0, end: 10.0),
            Pin(size: 200.0, end: -100.0),
            child: TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: _focusedDay,
              calendarFormat: CalendarFormat.week,
              startingDayOfWeek: StartingDayOfWeek.monday,
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
              headerVisible: false,
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
        ],
      ),
    );
  }
}

const String _svg_wd336p =
    '<svg viewBox="180.5 480.0 1.0 100.0" ><path transform="translate(180.5, 480.0)" d="M 0 0 L 0 100" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_s85h00 =
    '<svg viewBox="240.5 712.5 1.0 50.0" ><path transform="translate(240.5, 712.0)" d="M 0 0.5 L 0 5.5 L 0 50.5" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_aelur =
    '<svg viewBox="300.5 711.5 1.0 50.0" ><path transform="translate(300.5, 711.5)" d="M 0 0 L 0 50" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qrj66h =
    '<svg viewBox="180.5 712.5 1.0 50.0" ><path transform="translate(180.5, 712.5)" d="M 0 0 L 0 50" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
