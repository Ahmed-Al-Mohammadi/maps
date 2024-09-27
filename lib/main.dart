import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Map with Markers',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MapScreen(),
    );
  }
}

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController _controller;
  List<Marker> _markers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map with Markers'),
      ),
      body: GoogleMap(
        onMapCreated: (controller) {
          setState(() {
            _controller = controller;
          });
        },
        markers: Set<Marker>.of(_markers),
        initialCameraPosition: CameraPosition(
          target: LatLng(37.422, -122.084),
          zoom: 10,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    List<Location> locations = loadLocations();
    for (var location in locations) {
      _markers.add(Marker(
        markerId: MarkerId(location.name),
        position: LatLng(location.lat, location.lng),
        infoWindow: InfoWindow(title: location.name),
      ));
    }
  }
}

class Location {
  final String name;
  final double lat;
  final double lng;

  Location({required this.name, required this.lat, required this.lng});
}


List<Location> loadLocations() {
  return [
    Location(name: "القاهرة", lat: 30.0444, lng: 31.2357),
    Location(name: "الإسكندرية", lat: 31.2001, lng: 29.9187),
    Location(name: "الأقصر", lat: 25.6872, lng: 32.6396),
    Location(name: "أسوان", lat: 24.0889, lng: 32.8998),
    
  ];
}


// List<Location> loadLocations() {
//   String jsonContent =
//       '[{"name": "Location 1", "lat": 37.422, "lng": -122.084}, {"name": "Location 2", "lat": 37.427, "lng": -122.079}]';
//   List<dynamic> parsedJson = json.decode(jsonContent);
//   return parsedJson
//       .map((json) =>
//           Location(name: json['name'], lat: json['lat'], lng: json['lng']))
//       .toList();
// }
