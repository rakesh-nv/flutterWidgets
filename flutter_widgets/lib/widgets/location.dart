import 'package:flutter/material.dart';

class LocationWidget extends StatefulWidget {
  const LocationWidget({super.key});

  @override
  State<LocationWidget> createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GeoLocation'),
      ),
      body: Column(
        children: [
          const Text(
            'location',
            style: TextStyle(fontSize: 20),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Ger Location'),
          )
        ],
      ),
    );
  }
}
