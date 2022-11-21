import 'package:coffeeapp/Layout/Home_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationScreen extends StatelessWidget {
  LocationScreen({super.key});
  late GoogleMapController mapController;
  final LatLng center = const LatLng(45.521563, -122.677433);
  void onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            onMapCreated: onMapCreated,
            initialCameraPosition: CameraPosition(target: center, zoom: 19),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 10),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 25,
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return HomeLyout();
                      },
                    ));
                  },
                ),
                SizedBox(
                  width: 80,
                ),
                Text(
                  "Nearby Hotels",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
