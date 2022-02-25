// app.dart
// strange right this is how Nick Manning Wanted it

import 'package:flutter/material.dart';
import 'screens/location_detail/location_detail.dart';
import 'style.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LocationDetail(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          toolbarTextStyle: const TextTheme(titleLarge: AppBarTextStyle).bodyText2, 
          titleTextStyle: const TextTheme(titleLarge: AppBarTextStyle).headline6,
        ),
        textTheme: TextTheme(
          bodyText1: Body1TextStyle,
        )
      ),
    );
  }
}