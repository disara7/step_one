// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:location/location.dart';

// class LocationTrackerPage extends StatefulWidget {
//   @override
//   _LocationTrackerPageState createState() => _LocationTrackerPageState();
// }

// class _LocationTrackerPageState extends State<LocationTrackerPage> {
//   GoogleMapController? _mapController;
//   Location _location = Location();
//   late LatLng _currentLocation;

//   @override
//   void initState() {
//     super.initState();
//     _currentLocation = LatLng(0, 0); // Initial location

//     _location.onLocationChanged.listen((LocationData locationData) {
//       setState(() {
//         _currentLocation =
//             LatLng(locationData.latitude!, locationData.longitude!);
//         _mapController?.animateCamera(
//           CameraUpdate.newLatLng(_currentLocation),
//         );
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Location Tracker'),
//       ),
//       body: GoogleMap(
//         onMapCreated: (controller) {
//           setState(() {
//             _mapController = controller;
//           });
//         },
//         initialCameraPosition: CameraPosition(
//           target: _currentLocation,
//           zoom: 15,
//         ),
//         myLocationEnabled: true,
//         myLocationButtonEnabled: true,
//       ),
//     );
//   }
// }
