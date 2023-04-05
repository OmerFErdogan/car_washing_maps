import 'package:car_washing/models/place.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class PlacesService{
  final key = 'AIzaSyBMEoXajinS4CA5dfByzrY38DOHYkptdhk';




    Future<List<Place>> getPlaces(double lat, double lng) async {
    final response = await http.get(Uri.parse(
        'https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=$lat,$lng&type=car_wash&rankby=distance&key=$key'));
    if (response.statusCode == 200) {
      final json = convert.jsonDecode(response.body);
      final jsonResults = json['results'] as List;
      return jsonResults.map((place) => Place.fromJson(place)).toList();
    } else {
      throw Exception('Failed to get places.');
    }
  }
}


  //  Future<String> fetchData(double lat, double lng) async {
  //   var response = await http.get(Uri.parse('https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=$lat,$lng&type=parking&rankby=distance&key=$key'));
  //   if (response.statusCode == 200) {
  //     return response.body;
  //   } else {
  //     throw Exception('Failed to load data');
  //   }
  // }

  
