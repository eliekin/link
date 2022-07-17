import 'dart:async';

import 'package:geolocator/geolocator.dart';


class UserCurrentLocation {

  Future<Position> returnPosition() async {
    bool serviceUnabled;
    LocationPermission permission;

    serviceUnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceUnabled) {
      return Future.error('Location services are disabled');
    }

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) {
        return Future.error('Location permission disabled');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error('Location permission are permanently denied');
    }

    Position position = await Geolocator.getCurrentPosition();
    
    return position;
  }
}
