// In Dart import should be in alphabetical order

import 'package:flutter/material.dart';
import 'image_banner.dart';
// importing the text_section directory
import 'text_section.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to HotelBookings'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // adding an image banner to the site
            // we would create a new widget
            ImageBanner("assets/images/reisetopia-Vl5DAQxNBbM-unsplash.jpg"),
            TextSection("Summary", "Information1"),
            TextSection("Summary", "Information2"),
            TextSection("Summary", "Information3"),
          ],
        ));
  }
}
