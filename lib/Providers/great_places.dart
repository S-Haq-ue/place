import 'package:flutter/cupertino.dart';
import '../Models/place.dart';
//import 'package:provider/provider.dart';

class GreatPlaces with ChangeNotifier {
  List<Place> _items = [];
  List<Place> get items {
    return [..._items];
  }
}
