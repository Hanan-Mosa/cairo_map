import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CairoMapView extends StatefulWidget {
  const CairoMapView({super.key});

  @override
  State<CairoMapView> createState() => CairoMapViewState();
}

class CairoMapViewState extends State<CairoMapView> {
  final CameraPosition _cairoLocation =
      CameraPosition(target: LatLng(30.0444, 31.2357), zoom: 15.0);

  @override
  void initState() {
    super.initState();
    _addMarker();
  }

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Map'),
        centerTitle: true,
        backgroundColor: Colors.tealAccent,
      ),
      body:GoogleMap(
              mapType: MapType.hybrid,
              initialCameraPosition: _cairoLocation,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },

              markers: markers.values.toSet(),
            ),
    );
  }

  void _addMarker() {
    final marker = Marker(
      markerId: MarkerId('Cairo'),
      position: LatLng(30.0444, 31.2357),
      infoWindow: InfoWindow(
        title: 'Cairo, Egypt',
      ),
    );
    setState(() {
      markers[MarkerId('Cairo')] = marker;
    });
  }
}
