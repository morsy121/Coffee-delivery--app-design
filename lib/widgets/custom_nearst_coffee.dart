import 'package:flutter/material.dart';

class CustomNearstCoffee extends StatelessWidget {
  const CustomNearstCoffee(
      {super.key,
      this.distance,
      this.placeCoffee,
      this.nearstCoffeeImage,
      this.ratingOfPlaceCoffee});
  final String? distance;
  final String? placeCoffee;
  final String? nearstCoffeeImage;
  final String? ratingOfPlaceCoffee;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                '$nearstCoffeeImage',
              ),
              Padding(
                padding: const EdgeInsets.only(left: 98),
                child: Container(
                  width: 80,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Color(0xff80766E),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15))),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        '$distance km',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              '$placeCoffee',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '$ratingOfPlaceCoffee ratings',
                style: TextStyle(color: Color(0xff9D9D9D)),
              )
            ],
          ),
        ],
      ),
    );
  }
}
