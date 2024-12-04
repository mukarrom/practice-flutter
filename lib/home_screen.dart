import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Map Screen"),
      ),
      body: const GoogleMap(
        mapType: MapType.satellite,
        initialCameraPosition: CameraPosition(
          target: LatLng(23.957586, 90.276201),
          zoom: 17,
        ),
      ),
    );
  }
}
