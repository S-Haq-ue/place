import 'package:flutter/material.dart';
import 'package:place/Screens/add_places.dart';

class PlacesDisplayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Places",
          style: Theme.of(context).textTheme.headline6,
        ),
        actions: [
          ElevatedButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, AddPlaces.routeName);
            },
            icon: Icon(Icons.add),
            label: Text("add place"),
          ),
        ],
      ),
    );
  }
}
