import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late GoogleMapController googleMapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Google Map"),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: const CameraPosition(
          target: LatLng(23.957449531361377, 90.27618877056834),
          zoom: 16,
        ),
        onTap: (LatLng latLng) => print(latLng),
        zoomControlsEnabled: true,
        zoomGesturesEnabled: true,
        onMapCreated: (GoogleMapController controller) {
          googleMapController = controller;
        },
        trafficEnabled: true,
        compassEnabled: true,
        markers: <Marker>{
          const Marker(
            markerId: MarkerId('initial-position'),
            position: LatLng(23.957449531361377, 90.27618877056834),
          ),
          Marker(
            markerId: const MarkerId('home'),
            position: const LatLng(23.95296358204256, 90.27927026152611),
            infoWindow: InfoWindow(
              title: 'Home',
              onTap: () {
                print("On tapped home");
              },
            ),
            icon: BitmapDescriptor.defaultMarkerWithHue(
              BitmapDescriptor.hueBlue,
            ),
            draggable: true,
            onDragStart: (LatLng onStartLatLng) {
              print("On start drag: $onStartLatLng");
            },
            onDragEnd: (LatLng onEndLatLng) {
              print("On end drag: $onEndLatLng");
            },
          )
        },
        circles: <Circle>{
          Circle(
              circleId: const CircleId("initial-circle"),
              center: const LatLng(23.957449531361377, 90.27618877056834),
              radius: 150,
              strokeWidth: 2,
              strokeColor: Colors.blue,
              fillColor: Colors.red.withAlpha(70),
              visible: true,
              onTap: () {
                print("On tapped circle");
              }),
          Circle(
              circleId: const CircleId("home-circle"),
              center: const LatLng(23.95296358204256, 90.27927026152611),
              radius: 400,
              strokeWidth: 2,
              strokeColor: Colors.blue,
              fillColor: Colors.blue.withAlpha(70),
              visible: true,
              onTap: () {
                print("On tapped circle");
              })
        },
        polylines: <Polyline>{
          const Polyline(
            polylineId: PolylineId('polyline-1'),
            points: <LatLng>[
              LatLng(23.960302003481228, 90.2738394588232),
              LatLng(23.958897529769523, 90.27212284505367),
              LatLng(23.955685320782116, 90.27326714247465),
              LatLng(23.95219665598086, 90.2726049721241),
            ],
            color: Colors.red,
            width: 4,
          ),
        },
        polygons: <Polygon>{
          Polygon(
            polygonId: const PolygonId('polygon-1'),
            points: const <LatLng>[
              LatLng(23.96443751370141, 90.27416132390499),
              LatLng(23.961882937261283, 90.27237933129072),
              LatLng(23.95773692781929, 90.27997333556414),
            ],
            strokeWidth: 4,
            strokeColor: Colors.green,
            fillColor: Colors.greenAccent.withOpacity(0.2),
          )
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          googleMapController.animateCamera(CameraUpdate.newCameraPosition(
            const CameraPosition(
              target: LatLng(23.957449531361377, 90.27618877056834),
              zoom: 16,
            ),
          ));
        },
        child: const Icon(Icons.my_location),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
