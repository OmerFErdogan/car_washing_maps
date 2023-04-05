import 'package:geolocator/geolocator.dart';

class GeoLocatorService{

  Future<Position?> getLocation() async {
     LocationPermission permission;
   permission = await Geolocator.requestPermission();
    var geolocator = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    return await geolocator;

}
}

