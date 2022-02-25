// In Dart import should be in alphabetical order

import 'package:flutter/material.dart';
import 'image_banner.dart';
// importing the text_section directory
import 'text_section.dart';
// import the location class
import '../../models/location.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Loading locations to the build method
    final locations = Location.fetchAll();
    final location = locations.first;

    return Scaffold(
        appBar: AppBar(
          title:  Text(location.name),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // adding an image banner to the site
            // we would create a new widget
            ImageBanner(location.imagePath),
            TextSection("Summary", "Information1"),
            TextSection("Summary", "Information2"),
            TextSection("Summary", "Information3"),
          ],
        ));
  }
}
