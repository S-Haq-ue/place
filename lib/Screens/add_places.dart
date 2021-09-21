import 'package:flutter/material.dart';

class AddPlaces extends StatefulWidget {
  static const routeName = "/add-places";
  @override
  _AddPlacesState createState() => _AddPlacesState();
}

class _AddPlacesState extends State<AddPlaces> {
  final _titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(labelText: "Title"),
                  controller: _titleController,
                ),
                SizedBox(
                  height: 4,
                ),
              ],
            ),
          ),
        ),
        TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add),
            label: Text(
              "Add Place",
              textAlign: TextAlign.center,
            )),
      ],
    );
  }
}
