// ignore_for_file: prefer_const_constructors, camel_case_types

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:project/services/place_details.dart';
import 'package:project/widgets/bottom_sheet.dart';
import 'package:project/widgets/category.dart';
import 'package:project/widgets/spinnerWigdet.dart';
import 'package:project/services/userCurentLoaction.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  CameraPosition _initialCameraPosition = CameraPosition(
    target: LatLng(0.347596, 32.582520),
    zoom: 0,
  );

  final Set<Marker> markers = {};

  Future<Set<Marker>> add() async {
    markers.clear();
    // ignore: non_constant_identifier_names
    var User = await UserCurrentLocation().returnPosition();

    var restauPosition = await PlaceDetails().getPlace(User.latitude.toString(),
        User.longitude.toString(), 'food', 'restaurant', '5000');

    var hospitalPosition = await PlaceDetails().getPlace(
        User.latitude.toString(),
        User.longitude.toString(),
        'doctor',
        'hospital',
        '2000');

    var hotelPosition = await PlaceDetails().getPlace(User.latitude.toString(),
        User.longitude.toString(), 'motel', 'hotel', '5000');

    var gasStationPosition = await PlaceDetails().getPlace(
        User.latitude.toString(),
        User.longitude.toString(),
        'gas station',
        'gas station',
        '5000');

    var marketPosition = await PlaceDetails().getPlace(User.latitude.toString(),
        User.longitude.toString(), 'market', 'supermarket', '5000');

    var garagePosition = await PlaceDetails().getPlace(User.latitude.toString(),
        User.longitude.toString(), 'car repair', 'garage', '5000');
    for (int index = 0;
        index < restauPosition.length &&
            index < hospitalPosition.length &&
            index < hotelPosition.length &&
            index < gasStationPosition.length &&
            index < marketPosition.length &&
            index < garagePosition.length;
        index++) {
      //restaurant marker
      Marker restauMarker = Marker(
        markerId: MarkerId(restauPosition[index]['name']),
        position: LatLng(restauPosition[index]['geometry']['location']['lat'],
            restauPosition[index]['geometry']['location']['lng']),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
        onTap: () async {
          var placeId = await PlaceDetails()
              .getPlaceDetails(restauPosition[index]['place_id']);
          showModalBottomSheet(
              context: (context),
              builder: (context) {
                return bottomsheet(
                    restauPosition[index]['name'],
                    placeId['formatted_address'],
                    placeId['business_status'],
                    placeId['rating'],
                    placeId['formatted_phone_number']);
              });
        },
      );

      //hospital marker
      Marker hospitalMarker = Marker(
        markerId: MarkerId(hospitalPosition[index]['name']),
        position: LatLng(hospitalPosition[index]['geometry']['location']['lat'],
            hospitalPosition[index]['geometry']['location']['lng']),
        onTap: () async {
          var placeId = await PlaceDetails()
              .getPlaceDetails(hospitalPosition[index]['place_id']);
          showModalBottomSheet(
              context: (context),
              builder: (context) {
                return bottomsheet(
                    hospitalPosition[index]['name'],
                    placeId['formatted_address'],
                    placeId['business_status'],
                    placeId['rating'],
                    placeId['formatted_phone_number']);
              });
        },
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      );
      //hotel marker
      Marker hotelMarker = Marker(
        markerId: MarkerId(hotelPosition[index]['name']),
        position: LatLng(hotelPosition[index]['geometry']['location']['lat'],
            hotelPosition[index]['geometry']['location']['lng']),
        onTap: () async {
          var placeId = await PlaceDetails()
              .getPlaceDetails(hotelPosition[index]['place_id']);
          showModalBottomSheet(
              elevation: 2.5,
              context: (context),
              builder: (context) {
                return bottomsheet(
                    hotelPosition[index]['name'],
                    placeId['formatted_address'],
                    placeId['business_status'],
                    placeId['rating'],
                    placeId['formatted_phone_number']);
              });
        },
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
      );
      //gasStation marker
      Marker gasSationMarker = Marker(
        markerId: MarkerId(gasStationPosition[index]['name']),
        position: LatLng(
            gasStationPosition[index]['geometry']['location']['lat'],
            gasStationPosition[index]['geometry']['location']['lng']),
        onTap: () async {
          var placeId = await PlaceDetails()
              .getPlaceDetails(gasStationPosition[index]['place_id']);
          showModalBottomSheet(
              context: (context),
              builder: (context) {
                return bottomsheet(
                    gasStationPosition[index]['name'],
                    placeId['formatted_address'],
                    placeId['business_status'],
                    placeId['rating'],
                    placeId['formatted_phone_number']);
              });
        },
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueYellow),
      );
      //supermarket marker
      Marker supermarketMarker = Marker(
        markerId: MarkerId(marketPosition[index]['name']),
        position: LatLng(marketPosition[index]['geometry']['location']['lat'],
            marketPosition[index]['geometry']['location']['lng']),
        onTap: () async {
          var placeId = await PlaceDetails()
              .getPlaceDetails(marketPosition[index]['place_id']);
          showModalBottomSheet(
              context: (context),
              builder: (context) {
                return bottomsheet(
                    marketPosition[index]['name'],
                    placeId['formatted_address'],
                    placeId['business_status'],
                    placeId['rating'],
                    placeId['formatted_phone_number']);
              });
        },
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      );
      //garage marker
      Marker garageMarker = Marker(
        markerId: MarkerId(garagePosition[index]['name']),
        position: LatLng(garagePosition[index]['geometry']['location']['lat'],
            garagePosition[index]['geometry']['location']['lng']),
        onTap: () async {
          var placeId = await PlaceDetails()
              .getPlaceDetails(garagePosition[index]['place_id']);
          showModalBottomSheet(
              context: (context),
              builder: (context) {
                return bottomsheet(
                    garagePosition[index]['name'],
                    placeId['formatted_address'],
                    placeId['business_status'],
                    placeId['rating'],
                    placeId['formatted_phone_number']);
              });
        },
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      );
      //user marker
      Marker userMarker = Marker(
        markerId: MarkerId('user location'),
        position: LatLng(User.latitude, User.longitude),
        infoWindow: InfoWindow(title: 'My Current Location'),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRose),
      );

      setState(() {
        markers.addAll([
          restauMarker,
          hospitalMarker,
          hotelMarker,
          gasSationMarker,
          supermarketMarker,
          garageMarker,
          userMarker
        ]);
      });
    }
    return markers;
  }

  bool spinnerLoading = false;
  bool hasSearched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: spinnerLoading
          ? loadingSpinner()
          : SafeArea(
              child: Stack(children: [
                GoogleMap(
                  myLocationButtonEnabled: true,
                  zoomControlsEnabled: true,
                  initialCameraPosition: _initialCameraPosition,
                  markers: markers,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 15,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 4.0, vertical: 4.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Category(
                            text: 'My Location',
                            icon: Icons.place_rounded,
                            color: Colors.pink),
                        sizedBoxConstant(),
                        Category(
                            text: 'Restaurant',
                            icon: Icons.restaurant_menu_rounded,
                            color: Colors.orange),
                        sizedBoxConstant(),
                        Category(
                            text: 'Hotel',
                            icon: Icons.local_hotel_rounded,
                            color: Colors.green),
                        sizedBoxConstant(),
                        Category(
                            text: 'Supermarket',
                            icon: Icons.shopping_cart_rounded,
                            color: Colors.cyan),
                        sizedBoxConstant(),
                        Category(
                            text: 'Hopital',
                            icon: Icons.local_hospital_rounded,
                            color: Colors.blue),
                        sizedBoxConstant(),
                        Category(
                            text: 'Gas Station',
                            icon: Icons.local_gas_station_rounded,
                            color: Colors.yellow),
                        sizedBoxConstant(),
                        Category(
                            text: 'Garage',
                            icon: Icons.garage_rounded,
                            color: Colors.red),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, bottom: 14),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.refresh_outlined,
                          size: 35,
                          color: Colors.green,
                        ),
                        onPressed: () {
                          setState(() {
                            _initialCameraPosition = CameraPosition(
                              target: LatLng(0.347596, 32.582520),
                              zoom: 15,
                            );
                            markers.clear();
                           
                          });
                        },
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 93, vertical: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    color: Colors.white,
                    elevation: 2.5,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: () async {
                          setState(() {
                            spinnerLoading = true;
                          });
                          var user =
                              await UserCurrentLocation().returnPosition();
                          await add();
                          setState(() {
                            spinnerLoading = false;
                          });
                          setState(() {
                            _initialCameraPosition = CameraPosition(
                                target: LatLng(user.latitude, user.longitude),
                                zoom: 15);
                          });
                        },
                        child: Row(
                          children: const [
                            Icon(
                              Icons.person_pin_circle,
                              color: Colors.green,
                            ),
                            Text(
                              'My current location',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
    );
  }

  SizedBox sizedBoxConstant() {
    return SizedBox(
      width: 5,
    );
  }
}
