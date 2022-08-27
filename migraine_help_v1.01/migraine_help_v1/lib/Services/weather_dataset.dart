import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class Weather {
  int max;
  int min;
  int current;
  String? name;
  String day;
  int wind;
  String degree;
  int humidity;
  String image;
  String time;
  String location;

  Weather(
      {required this.max,
      required this.min,
      required this.name,
      required this.day,
      required this.wind,
      required this.degree,
      required this.humidity,
      required this.image,
      required this.current,
      required this.time,
      required this.location});
}

//get appid from http://openweathermap.org
String appId = "17b718cb58d7ba5a4fe4b1572f1bee4f";
//https://api.openweathermap.org/data/2.5/onecall?lat=$lat&lon=$lon&units=metric&appid=$appId
//https://raw.githubusercontent.com/dr5hn/countries-states-cities-database/master/cities.json

Future<List> fetchData(String lat, String lon, String city) async {
  var url =
      "https://api.openweathermap.org/data/2.5/forecast?lat=$lat&lon=$lon&units=metric&appid=$appId";
  var response = await http.get(Uri.parse(url));
  DateTime date = DateTime.now();
  if (response.statusCode == 200) {
    var res = json.decode(response.body);
    //current Temp
    var current = res["list"];
    //print(res);
    Weather currentTemp = Weather(
      current: current?[0]["main"]["temp"]?.round() ?? 0,
      min: current?[0]["main"]["temp_min"]?.round() ?? 0,
      max: current?[0]["main"]["temp_max"]?.round() ?? 0,
      name: current?[0]["weather"][0]["main"].toString(),
      day: DateFormat("EEEE dd MMMM").format(date),
      wind: current?[0]["wind"]?["speed"]?.round() ?? 0,
      degree: findDirection(current?[0]["wind"]?["deg"]?.round() ?? 0),
      humidity: current?[0]["main"]["humidity"]?.round() ?? 0,
      location: city,
      time: DateFormat("jm").format(date),
      image: findIcon(current?[0]["weather"][0]["main"].toString()),
    );

    //Seven Day Weather
    List<Weather> sevenDay = [];
    for (var i = 0; i < 8; i++) {
      var temp = res["list"];
      var hourly = Weather(
        current: temp?[i]["main"]["temp"]?.round() ?? 0,
        min: temp?[i]["main"]["temp_min"]?.round() ?? 0,
        max: temp?[i]["main"]["temp_max"]?.round() ?? 0,
        name: temp?[i]["weather"][0]["main"].toString(),
        day: DateFormat("EEEE dd MMMM").format(date),
        wind: temp?[i]["wind"]?["speed"]?.round() ?? 0,
        degree: findDirection(temp?[i]["wind"]?["deg"]?.round() ?? 0),
        humidity: temp?[i]["main"]["humidity"]?.round() ?? 0,
        location: city,
        time: DateFormat("jm").format(date),
        image: findIcon(temp[i]["weather"][0]["main"].toString()),
      );
      sevenDay.add(hourly);
    }
    print(sevenDay);
    return [currentTemp, sevenDay];
  }
  return [null, null, null, null];
}

//findIcon
String findIcon(String? name) {
  switch (name) {
    case "Cloudy":
      return "assets/images/cloudy.png";
    case "Rain":
      return "assets/images/rain.png";
    default:
      return "assets/images/sunny_big.png";
  }
}

//findDirection
String findDirection(int degree) {
  if (degree >= 0 && degree <= 11 && degree >= 349.00) {
    return "North";
  } else if (degree >= 12 && degree <= 33) {
    return "NorthNorthEast";
  } else if (degree >= 34 && degree <= 56) {
    return "NorthEast";
  } else if (degree >= 57 && degree <= 78) {
    return "EastNorthEast";
  } else if (degree >= 79 && degree <= 101) {
    return "East";
  } else if (degree >= 102 && degree <= 123) {
    return "EastSouthEast";
  } else if (degree >= 124 && degree <= 146) {
    return "SouthEast";
  } else if (degree >= 147 && degree <= 168) {
    return "SouthSouthEast";
  } else if (degree >= 169 && degree <= 191) {
    return "South";
  } else if (degree >= 192 && degree <= 213) {
    return "SouthSouthWest";
  } else if (degree >= 214 && degree <= 236) {
    return "SouthWest";
  } else if (degree >= 237 && degree <= 258) {
    return "WestSouthEast";
  } else if (degree >= 259 && degree <= 281) {
    return "West";
  } else if (degree >= 281 && degree <= 303) {
    return "WestNorthWest";
  } else if (degree >= 304 && degree <= 326) {
    return "NorthWest";
  } else if (degree >= 327 && degree <= 348) {
    return "SouthEast";
  } else {
    return "N/A";
  }
}
