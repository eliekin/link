import 'dart:convert' as convert;


import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;


class PlaceDetails with ChangeNotifier {
  final String key = 'AIzaSyBj5ps7ECrlgqimZ7JPHJ_X7WcciazZafI';

  getPlace(String userLat, String userLng, String keyword, String type,
      String radius) async {
    String url =
        'https://maps.googleapis.com/maps/api/place/nearbysearch/json?keyword=$keyword&location=$userLat,$userLng&radius=$radius&type=$type&key=$key';
    var response = await http.get(Uri.parse(url));
    var json = convert.jsonDecode(response.body);

    final result = json['results'];
    notifyListeners();
    return result;
  }


  Future<Map<String, dynamic>> getPlaceDetails(String placeId) async {
    String url =
        'https://maps.googleapis.com/maps/api/place/details/json?fields=formatted_phone_number,formatted_address,business_status&place_id=$placeId&key=$key';

    var response = await http.get(Uri.parse(url));
    var json = convert.jsonDecode(response.body);
    var results = json['result'];
     notifyListeners();
    return results;
  }
  notifyListeners();
}
