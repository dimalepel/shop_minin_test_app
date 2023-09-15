import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:shop_minin_test_app/repositories/location_repository.dart';

import '../theme/app_colors.dart';

class LocationAndDate extends StatefulWidget {
  const LocationAndDate({super.key});

  @override
  State<LocationAndDate> createState() => _LocationAndDateState();
}

class _LocationAndDateState extends State<LocationAndDate> {
  Position? currentLocation;
  var markerPoint;
  late bool servicePermission = false;
  late LocationPermission permission;

  String currentAddress = "";

  Future<Position> getCurrentLocation() async {
    servicePermission = await Geolocator.isLocationServiceEnabled();

    if (!servicePermission) {
      print('service disabled');
    }

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

      print(place.locality);

      setState(() {
        currentAddress = "${place.locality}";
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    fetchCurrentLocation();

    //print(Provider.of<LocationRepository>(context, listen: false).getAddressFromCoordinates());
  }

  void fetchCurrentLocation() async{
    //calling the api
    currentLocation = await getCurrentLocation();
    print(currentLocation);
    await getAddressFromCoordinates();

    //setState will update the values in real time
    setState(() {
      markerPoint = currentLocation;
    });
  }

  @override
  Widget build(BuildContext context) {
    String locale = Localizations.localeOf(context).languageCode;

    List<String> monthsList = [
      'Января',
      'Февраля',
      'Марта',
      'Апреля',
      'Мая',
      'Июня',
      'Июля',
      'Августа',
      'Сентября',
      'Октября',
      'Ноября',
      'Декабря'];

    DateTime now = DateTime.now();
    String dayOfWeek = DateFormat.d(locale).format(now);
    String numberOfMonth = DateFormat.M(locale).format(now);
    String year = DateFormat.y(locale).format(now);



    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                'assets/images/svgs/icon_location.svg',
                width: 24,
                height: 24,
              ),
              const SizedBox(width: 4,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${currentAddress}',
                    style: TextStyle(
                        fontSize: 18,
                        color: AppColors.black,
                        fontFamily: 'San Francisco',
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  const SizedBox(height: 4,),
                  Text(
                    '${dayOfWeek} ${monthsList[int.parse(numberOfMonth) - 1]}, ${year}',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'San Francisco',
                      fontWeight: FontWeight.w400,
                      color: AppColors.black50,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

