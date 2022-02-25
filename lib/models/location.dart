import 'location_fact.dart';

class Location {
  String name;
  String imagePath;
  final List<LocationFact> facts;

  Location(this.name, this.imagePath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location('Transcorp Hilton Abuja', 'assets/images/HotelDubai.jpg', [
        LocationFact('Summary',
            'Contemporary hotel featuring multiple eateries & an outdoor pool, plus a piano bar & a 24/7 gym.'),
        LocationFact('How to Get There',
            'This modern hotel in the city centre is 2 km from the Abuja National Mosque and 43 km from Nnamdi Azikiwe International Airport.'),
      ]),
    ];
  }
}
