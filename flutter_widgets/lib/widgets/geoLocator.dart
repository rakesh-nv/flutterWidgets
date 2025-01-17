// ignore: file_names
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationWidget extends StatefulWidget {
  const LocationWidget({super.key});

  @override
  State<LocationWidget> createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  Position? position;

  fetchPosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services is enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      return Future.error('Location services are disabled');
    }
    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permission are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permission');
    }
    Position currentposition = await Geolocator.getCurrentPosition();
    setState(
      () {
        position = currentposition;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GeoLocation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              position == null ? 'Location' : position.toString(),
              style: const TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: () {
                fetchPosition();
              },
              child: const Text('Geo Location'),
            )
          ],
        ),
      ),
    );
  }
}
