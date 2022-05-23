import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test_group_2/homeworks/task35/rafo/Test/myWeather/consts/consts.dart';
import 'package:flutter_test_group_2/homeworks/task35/rafo/Test/myWeather/models/models.dart';

class MyProvider with ChangeNotifier {
  // var weather = AssetImage("lib/homeworks/task35/rafo/Test/myWeather/myAsets/Clouds.png");
  WeatherDTO? weatherResponse;

  bool sleepduration = true;

  Future<dynamic> getWeather(String param) async {
    sleepduration = false;
    notifyListeners();
    var response = await Dio()
        .get(
      baseUrl,
      queryParameters: {
        "q": param,
      },
      options: Options(headers: {
        requestHost: requestHostValue,
        requestKey: requestKeyValue,
      }),
    ).catchError((e){
      sleepduration = true;
      notifyListeners();
      throw Exception(e.toString());

    });


    print(response.statusCode);
    weatherResponse = WeatherDTO.fromJson(response.data);
    // await Future.delayed(Duration(seconds: 5));
    print("\n");

    // sleep(Duration(seconds: 15 ));

    sleepduration = true;
    notifyListeners();

    return response.data["weather"][0]["main"];
  }

  String get weather {
    switch (weatherResponse?.weather?[0]["main"]) {
      case "Clouds":
        return Clouds;
      case "Rain":
        return Rain;
      case "Clear":
        return Clear;
      case "Squall":
        return Squall;
      case "Thunderstorm":
        return Thunderstorm;
    }
    return DefaultWeather;
  }

  double? get temperature {
    if (weatherResponse?.main?["temp"] == null) {
      return 0.0;
    }
    return weatherResponse?.main?["temp"] - 273.15;
  }
}

// /// Determine the current position of the device.
// ///
// /// When the location services are not enabled or permissions
// /// are denied the `Future` will return an error.
// Future<Position> _determinePosition() async {
//   bool serviceEnabled;
//   LocationPermission permission;
//
//   // Test if location services are enabled.
//   serviceEnabled = await Geolocator.isLocationServiceEnabled();
//   if (!serviceEnabled) {
//     // Location services are not enabled don't continue
//     // accessing the position and request users of the
//     // App to enable the location services.
//     return Future.error('Location services are disabled.');
//   }
//
//   permission = await Geolocator.checkPermission();
//   if (permission == LocationPermission.denied) {
//     permission = await Geolocator.requestPermission();
//     if (permission == LocationPermission.denied) {
//       // Permissions are denied, next time you could try
//       // requesting permissions again (this is also where
//       // Android's shouldShowRequestPermissionRationale
//       // returned true. According to Android guidelines
//       // your App should show an explanatory UI now.
//       return Future.error('Location permissions are denied');
//     }
//   }
//
//   if (permission == LocationPermission.deniedForever) {
//     // Permissions are denied forever, handle appropriately.
//     return Future.error(
//         'Location permissions are permanently denied, we cannot request permissions.');
//   }
//
//   // When we reach here, permissions are granted and we can
//   // continue accessing the position of the device.
//   return await Geolocator.getCurrentPosition();
// }
