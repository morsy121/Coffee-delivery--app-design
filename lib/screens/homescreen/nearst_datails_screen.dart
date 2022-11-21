import 'dart:collection';

import 'package:coffeeapp/models/coffee_popular.dart';
import 'package:coffeeapp/screens/homescreen/view_product.dart';
import 'package:coffeeapp/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:readmore/readmore.dart';

import '../../Core/colors.dart';

class NearstDetailsScreen extends StatelessWidget {
  NearstDetailsScreen({super.key, this.nearstCoffee});
  NearstCoffee? nearstCoffee;
  late GoogleMapController mapController;
  final LatLng center = const LatLng(45.521563, -122.677433);
  void onMapCreated(GoogleMapController controller) {
    mapController = controller;
    myMarkers.add(Marker(
        markerId: MarkerId("1"), position: LatLng(45.521563, -122.677433)));
  }

  var myMarkers = HashSet<Marker>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(
                      nearstCoffee!.image,
                      width: 500,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                            color: Color(0xff616A5B),
                            borderRadius: BorderRadius.circular(30)),
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          icon: Icon(Icons.arrow_back),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      SizedBox(
                        width: 95,
                      ),
                      Text(
                        "Nearby shops",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                children: [
                  Text(
                    nearstCoffee!.typeofCoffee,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Text(
                        "${nearstCoffee!.rate} rating",
                        style:
                            TextStyle(color: Color(0xff9D9D9D), fontSize: 17),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 10),
              child: Text(
                "Special coffee and cakes ",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: ReadMoreText(
                ' Find the best place to hang out with friends. Visit \n Café Coffee Day and enjoy hot coffees, cold coffees, snacks and more. Asley is the best place to spend ...',
                style: TextStyle(color: Color(0xff9D9D9D), fontSize: 15),
                trimLines: 2,
                colorClickableText: mainColor,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Read More',
                textAlign: TextAlign.start,
                moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: mainColor),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1, color: Colors.white)),
                child: GoogleMap(
                  markers: myMarkers,
                  onMapCreated: onMapCreated,
                  initialCameraPosition:
                      CameraPosition(target: center, zoom: 19),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: CustomButton(
                width: double.infinity,
                hight: 55,
                backgroundColor: Color(0xff314D45),
                text: "View Products",
                onpressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return ViewProducts();
                    },
                  ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
