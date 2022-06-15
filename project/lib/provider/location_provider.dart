

// import 'package:flutter/foundation.dart';
// import 'package:location/location.dart';

// class LocationProvider with ChangeNotifier{
//   Location? _location;
//   Location? get location => _location;
//   latLng? _locationPosition;
//   latLng? get locationPosition => _locationPosition;

//   bool locationServiceActive = true;

// LocationProvider(){
//     _location = Location();
//   }

//   getUserLocation() async{
//     bool _serviceEnabled;
//     PermissionStatus _permissionGranted;

//     _serviceEnabled = await location!.serviceEnabled();
//     if(!_serviceEnabled){
//       _serviceEnabled = await location!.requestService();
//     }
//   }

// }
