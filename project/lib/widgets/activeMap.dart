import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class activeMap extends StatefulWidget {
  activeMap({Key? key}) : super(key: key);

  @override
  State<activeMap> createState() => _activeMapState();
}

late GoogleMapController mapController;

LatLng _center = const LatLng(45.521563, -122.677433);

void _onMapCreated(GoogleMapController controller) {
}

class _activeMapState extends State<activeMap> {
late  GoogleMapController _controller;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        
            child: GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 18.0,
              ),
            ),
          ),
      );
  }
}

