// In Dart import should be in alphabetical order

import 'package:flutter/material.dart';
import 'image_banner.dart';
// importing the text_section directory
import 'text_section.dart';
// import the location class
import '../../models/location.dart';

class LocationDetail extends StatelessWidget {
  final int _locationID;

  LocationDetail(this._locationID);

  @override
  Widget build(BuildContext context) {
    // Loading locations to the build method
    final location = Location.fetchByID(_locationID);
    

    return Scaffold(
        appBar: AppBar(
          title: Text(location.name),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // adding an image banner to the site
              // we would create a new widget
              ImageBanner(location.imagePath),
              // injecting the textsection list
              // using cascade let's you run a function or an assignment against a given item
            ]..addAll(textSections(location))));
  }

// map converts a list of one type to a list of another type
// iterates each fact in a fact list, and for each fact we are gonna execute a single statement
// and the statement would return what is going to be oushed in the new list (textsection)
  List<Widget> textSections(Location location) {
    return location.facts
        .map((facts) => TextSection(facts.title, facts.text, facts.reviews))
        .toList();
  }
}
