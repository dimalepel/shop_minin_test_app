import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class LocationRepository extends ChangeNotifier {
  Position? currentLocation;
  late bool servicePermission = false;
  var markerPoint;
  late LocationPermission permission;
  late String currentAddress;

  Future<Position> getCurrentLocation() async {
    servicePermission = await Geolocator.isLocationServiceEnabled();
    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    return await Geolocator.getCurrentPosition();
  }

  getAddressFromCoordinates() async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
          currentLocation!.latitude,
          currentLocation!.longitude
      );

      Placemark place = placemarks[0];

      currentAddress = place.locality!;
    } catch (e) {
      print(e);
    }
  }

  void fetchCurrentLocation() async{
    //calling the api
    currentLocation = await getCurrentLocation();
    await getAddressFromCoordinates();

    //setState will update the values in real time
    markerPoint = currentLocation;
  }
}