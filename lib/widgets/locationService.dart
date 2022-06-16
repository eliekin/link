import 'dart:convert' as convert;
import 'dart:core';
import 'package:flutter/foundation.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class LocationService with ChangeNotifier {
  final String key = 'AIzaSyBj5ps7ECrlgqimZ7JPHJ_X7WcciazZafI';

  Future<Map<String, dynamic>> getDirection(
      LatLng origin, String destination) async {
    final String url =
        'https://maps.googleapis.com/maps/api/directions/json?origin=${origin.latitude},${origin.longitude}&destination=$destination&key=$key';

    var response = await http.get(Uri.parse(url));

    var json = convert.jsonDecode(response.body);

    String statusCode = json['status'];

    var results = {
       statusCode : json['status'],
      'distance': json['routes'][0]['legs'][0]['distance']['text'],
      'duration': json['routes'][0]['legs'][0]['duration']['text'],
      'bounds_ne': json['routes'][0]['bounds']['northeast'],
      'bounds_sw': json['routes'][0]['bounds']['southwest'],
      'start_location': json['routes'][0]['legs'][0]['start_location'],
      'end_location': json['routes'][0]['legs'][0]['end_location'],
      'polyline': json['routes'][0]['overview_polyline']['points'],
      'polyline_decoded': PolylinePoints().decodePolyline(
        json['routes'][0]['overview_polyline']['points'],
      )
    };

    return results;
  }
}
