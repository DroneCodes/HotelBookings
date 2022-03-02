import 'location_fact.dart';

class Location {
  final int id;
  String name;
  String imagePath;
  String reviews;
  final List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.reviews, this.facts);

  static List<Location> fetchAll() {
    return [
      Location(1, 'Transcorp Hilton Abuja', 'assets/images/HotelDubai.jpg',
          '5-Star Hotel', [
        LocationFact(
            'Summary',
            'Contemporary hotel featuring multiple eateries & an outdoor pool, plus a piano bar & a 24/7 gym.',
            '5-Star Hotel'),
        LocationFact(
            'How to Get There',
            '''1 Aguiyi Ironsi St, Maitama 900001, Abuja. 
This modern hotel in the city centre is 2 km from the Abuja National Mosque and 43 km from Nnamdi Azikiwe International Airport.''',
            '''Nice staff and good customer service - Kimberly. Transcorp Hilton is a nice hotel that provides you with adequate facilities and good hospitality - Fisayo'''),
      ]),
      Location(2, 'Radisson Blu Anchorage Hotel, Lagos, V.I',
          'assets/images/fernando.jpg', '5-Star Hotel', [
        LocationFact(
            'Summary',
            'Straightforward hotel with warm rooms & suites, plus an infinity pool & 2 restaurants.',
            '5-Star Hotel'),
        LocationFact(
            'How to Get There',
            '''1a Ozumba Mbadiwe Ave, Victoria Island 101241, Lagos.
This straightforward hotel with views of Lagos Lagoon is 1 km from Bar Beach and 11 km from the National Theatre arts venue.''',
            '''Wooww.... never have i seen a hotel so majestic - Samuel. I enjoyed every bit of my time from the food to the ambience, the view, service. All was good. It felt like I was in a familiar space seeing how pleasant the staff were. I particularly enjoyed the brunch with my family, variety of food and bottomless drinks. It was the place to be during the festive period.. - John'''),
      ]),
      Location(
          3,
          'Maison Fahrenheit Hotel',
          'assets/images/groid.jpg',
          'Transcorp Hilton is a nice hotel that provides you with adequate facilities and good hospitality - Fisayo',
          [
            LocationFact(
                'Summary',
                'Contemporary hotel featuring multiple eateries & an outdoor pool, plus a piano bar & a 24/7 gym.',
                '4.4 out of 5'),
            LocationFact(
                'How to Get There',
                '''80 Adetokunbo Ademola Street, Victoria Island 106104, Lagos. 
Contemporary rooms in a sleek hotel offering dining, an outdoor pool & a chic rooftop cocktail bar.''',
                '''Obviously built with a small exclusive clientele in mind,Facilities and services are excellent. There is even an evening karaoke at the pool side, for lovers of music. …'''),
          ]),
    ];
  }

  // implementing a method that fetvhes location by ID

  static Location fetchByID(int locationID) {
    // fetch location, itirate them and return the location with a specified Id
    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationID) {
        return locations[i];
      }
    }
    return null as dynamic;
  }
}

