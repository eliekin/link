import 'dart:ui';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class PinData {
  String pinPath;
  String avatarPath;
  String location;
  Color labelColor;

  PinData(
      {required this.avatarPath,
      required this.labelColor,
      required this.location,
      required this.pinPath});
}
