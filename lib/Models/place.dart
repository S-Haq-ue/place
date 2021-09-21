import 'dart:io';

import 'package:flutter/cupertino.dart';

class PlaceLocation {
  final double longitude;
  final double latitude;
  final String address;
  PlaceLocation({
    @required this.latitude,
    @required this.longitude,
    @required this.address,
  });
}

class Place {
  final String title;
  final String id;
  final PlaceLocation location;
  final File image;
  Place({
    @required this.title,
    @required this.id,
    @required this.image,
    @required this.location,
  });
}
