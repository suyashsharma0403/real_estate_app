import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// widget that loads the map into the detailed house screen
class GoogleMapWithMarker extends StatelessWidget {
  final LatLng initialPosition;
  final Set<Marker> markers;
  //required arguments for widget class
  GoogleMapWithMarker({required this.initialPosition, required this.markers});

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: CameraPosition(
        target: initialPosition,
        zoom: 11.0,
      ),
      markers: markers,
      onMapCreated: (GoogleMapController controller) {

      },
    );
  }
}
