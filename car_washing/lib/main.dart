import 'package:car_washing/home/search.dart';
import 'package:car_washing/login/login_page.dart';
import 'package:car_washing/models/place.dart';
import 'package:car_washing/register/register_page.dart';
import 'package:car_washing/services/geolocator_services.dart';
import 'package:car_washing/services/places_service.dart';
import 'package:car_washing/src/routing.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';

import 'home/home_page.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  final locatorService = GeoLocatorService();
  final placesService = PlacesService();
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
         FutureProvider(create: (context) => locatorService.getLocation(), initialData: null,),
         ProxyProvider<Position?, Future<List<Place>>?>(
            update: (context, position, places){
              return (position !=null) ? placesService.getPlaces(position.latitude, position.longitude) : null;
            },
          ),
      ],
     
      child: GetMaterialApp(
        getPages: getPages,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:  LoginPage(),
      ),
    );
  }
}
