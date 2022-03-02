// app.dart
// strange right this is how Nick Manning Wanted it


import 'package:flutter/material.dart';
import 'package:projects/screens/location_detail/location_detail.dart';
import 'screens/locations/locations.dart';
import 'style.dart';
import 'dart:core';

const LocationsRoute = '/';
const LocationDetailRoute = '/location_detail';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      theme: _theme(),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments as dynamic;
      Widget screen;
      switch (settings.name) {
        case LocationsRoute:
          screen = Locations();
          break;
        case LocationDetailRoute:
          screen = LocationDetail(arguments['id']);
          break;
        default:
          return Locations() as dynamic;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  ThemeData _theme() {
    return ThemeData(
        appBarTheme: AppBarTheme(
          toolbarTextStyle:
              const TextTheme(titleLarge: AppBarTextStyle).bodyText2,
          titleTextStyle:
              const TextTheme(titleLarge: AppBarTextStyle).headline6,
        ),
        textTheme: TextTheme(
          bodyText1: Body1TextStyle,
        ));
  }
}
