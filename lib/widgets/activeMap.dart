// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:project/provider/place_details.dart';
import 'package:project/widgets/loadingSpinner.dart';
import './details_widgets.dart';
import '../widgets/locationService.dart';
import '../provider/userCurentLoaction.dart';

class activeMap extends StatefulWidget {
  activeMap({Key? key}) : super(key: key);

  @override
  State<activeMap> createState() => _activeMapState();
}

class _activeMapState extends State<activeMap> {
  @override
  void dispose() {
    // TODO: implement dispose

    super.dispose();
  }

  CameraPosition _initialCameraPosition = CameraPosition(
    target: LatLng(0.347596, 32.582520),
    zoom: 15,
  );

  late GoogleMapController _onMapCreated;
  TextEditingController _destinationController = TextEditingController();

  final Set<Marker> markers = new Set();
  Set<Polyline> _polyline = Set<Polyline>();

  int _polylineIdcounter = 1;
  final _formKey = GlobalKey<FormState>();

  void _setPolyline(List<PointLatLng> points) {
    _polyline.clear();
    String polylineIdVal = 'polyline _$_polylineIdcounter';
    _polylineIdcounter++;
    _polyline.add(
      Polyline(
          polylineId: PolylineId(polylineIdVal),
          width: 2,
          color: Colors.red,
          points: points
              .map((point) => LatLng(point.latitude, point.longitude))
              .toList()),
    );
  }

  Future<Set<Marker>> add() async {
    markers.clear();
    final icon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(size: Size(30, 30)),
        'image/icons/meOnMap.png');
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
          showBottomSheet(
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
          showBottomSheet(
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
          showBottomSheet(
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
          showBottomSheet(
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
          showBottomSheet(
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
          showBottomSheet(
              context: (context),
              builder: (context) {
                return bottomsheet(
                    garagePosition[index]['name'],
                    placeId['formatted_address'],
                    placeId['business_status'],
                    placeId['rating'],
                    placeId['formatted_phone_number']);
              });
          print(garagePosition[index]['name']);
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: spinnerLoading
          ? LoaderSpinner()
          : Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Container(
                    margin:
                        EdgeInsets.only(left: 4, right: 4, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Form(
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              style: const TextStyle(color: Colors.white),
                              cursorColor: Colors.green[400],
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                hintText: 'Search for a destination',
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 2,
                                ),
                              ),
                              controller: _destinationController,
                              textCapitalization: TextCapitalization.words,
                            ),
                          ),
                          IconButton(
                            onPressed: searchingPlaceButton,
                            icon: const Icon(
                              Icons.search_rounded,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Stack(children: [
                      GoogleMap(
                        myLocationButtonEnabled: true,
                        zoomControlsEnabled: true,
                        initialCameraPosition: _initialCameraPosition,
                        onMapCreated: (controller) {
                          _onMapCreated = controller;
                        },
                        markers: markers,
                        polylines: _polyline,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 15,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 4.0, vertical: 4.0),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              categoryMapMarker('My Location',
                                  Icons.place_rounded, Colors.pink),
                              SizedBoxConstant(),
                              categoryMapMarker(
                                  'Restaurant',
                                  Icons.restaurant_menu_rounded,
                                  Colors.orange),
                              SizedBoxConstant(),
                              categoryMapMarker('Hotel',
                                  Icons.local_hotel_rounded, Colors.green),
                              SizedBoxConstant(),
                              categoryMapMarker('Supermarket',
                                  Icons.shopping_cart_rounded, Colors.cyan),
                              SizedBoxConstant(),
                              categoryMapMarker(
                                  'Hopital',
                                  Icons.local_hospital_rounded,
                                  Colors.blue),
                              SizedBoxConstant(),
                              categoryMapMarker(
                                  'Gas Station',
                                  Icons.local_gas_station_rounded,
                                  Colors.yellow),
                              SizedBoxConstant(),
                              categoryMapMarker('Garage',
                                  Icons.garage_rounded, Colors.red),
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
                                  CameraPosition _initialCameraPosition =
                                      CameraPosition(
                                    target: LatLng(0.347596, 32.582520),
                                    zoom: 15,
                                  );
                                  markers.clear();
                                  _polyline.clear();
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Card(
                          margin: EdgeInsets.symmetric(
                              horizontal: 93, vertical: 15),
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
                                var user = await UserCurrentLocation()
                                    .returnPosition();
                                GoogleMapController controller =
                                    await _onMapCreated;
                                await add();
                                setState(() {
                                  spinnerLoading = false;
                                });
                                setState(() {
                                  _initialCameraPosition = CameraPosition(
                                      target:
                                          LatLng(user.latitude, user.longitude),
                                      zoom: 15);
                                });
                              },
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.person_pin_circle,
                                    color: Colors.green,
                                  ),
                                  const Text(
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
                ],
              ),
            ),
    );
  }

  void searchingPlaceButton() async {
    setState(() {
      spinnerLoading = true;
    });
    var userLocation = await UserCurrentLocation().returnPosition();
    var userLat = userLocation.latitude;
    var userLng = userLocation.longitude;
    var directions = await LocationService()
        .getDirection(LatLng(userLat, userLng), _destinationController.text);
    print(directions['statusCode']);
    await add();
    setState(() {
      spinnerLoading = false;
    });
    _goToPlace(
        directions['start_location']['lat'],
        directions['start_location']['lng'],
        directions['bounds_ne'],
        directions['bounds_sw']);
    _setPolyline(directions['polyline_decoded']);
  }

  // Padding timeAndDistance(IconData icon) {
  //   return Padding(
  //     padding: const EdgeInsets.all(8.0),
  //     child: Row(
  //       children: [
  //         IconButton(
  //           icon: Icon(icon, color: Colors.green),
  //           onPressed: () async {
  //             var userLocation = await UserCurrentLocation().returnPosition();
  //             var userLat = userLocation.latitude;
  //             var userLng = userLocation.longitude;
  //             var directions = await LocationService().getDirection(
  //                 LatLng(userLat, userLng), _destinationController.text);

  //             return directions['duration'];
  //           },
  //         ),
  //         SizedBoxConstant(),
  //         Text(
  //           'toString()',
  //           style: TextStyle(color: Colors.white),
  //         )
  //       ],
  //     ),
  //   );
  // }

  SizedBox SizedBoxConstant() {
    return SizedBox(
      width: 5,
    );
  }

  Container categoryMapMarker(String text, IconData icon, Color color) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black.withOpacity(0.7)),
      child: Row(
        children: [
          Icon(
            icon,
            color: color,
          ),
          Text(text, style: TextStyle(color: color)),
        ],
      ),
    );
  }

  Future<void> _goToPlace(double lat, double lng, Map<String, dynamic> boundsNe,
      Map<String, dynamic> boundsSw) async {
    GoogleMapController controller = await _onMapCreated;
    setState(() {
      _initialCameraPosition =
          CameraPosition(target: LatLng(lat, lng), zoom: 15);
    });
  }
}
