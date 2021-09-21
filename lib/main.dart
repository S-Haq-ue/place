import 'package:flutter/material.dart';
import 'package:place/Providers/great_places.dart';
import 'package:place/Screens/add_places.dart';
import 'package:place/Screens/places_displayed_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => GreatPlaces(),
        ),
      ],
      child: MaterialApp(
        title: "places",
        theme: ThemeData(
          accentColor: Colors.amberAccent,
          primaryColor: Colors.green,
          errorColor: Colors.redAccent,
          textTheme: ThemeData.light().textTheme.copyWith(
                headline6: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
        ),
        home: PlacesDisplayScreen(),
        //initialRoute: ,
        routes: {
          AddPlaces.routeName: (ctx) => AddPlaces(),
        },
      ),
    );
  }
}
