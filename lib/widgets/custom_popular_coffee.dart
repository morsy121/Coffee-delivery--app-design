import 'package:coffeeapp/cubit/cubit.dart';
import 'package:coffeeapp/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomPopularCoffee extends StatelessWidget {
  const CustomPopularCoffee(
      {super.key,
      this.timedeleivery,
      this.rate,
      required this.nameofimages,
      this.price,
      this.coffePlace,
      this.typeOfCoffee});
  final String? timedeleivery;
  final String? rate;
  final String nameofimages;
  final String? typeOfCoffee;
  final String? price;
  final String? coffePlace;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CoffeeAppCubit(),
      child: BlocConsumer<CoffeeAppCubit, CoffeeAppState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Container(
            width: 270,
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset(nameofimages),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 220),
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 150, left: 15),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.lock_clock,
                                color: Colors.white,
                              ),
                              Text(
                                '$timedeleivery min delivery',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Text(
                                '$rate',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          '$typeOfCoffee',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(
                          width: 90,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.currency_rupee,
                              color: Colors.black,
                            ),
                            Text('$price'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.grey,
                        ),
                        Text('$coffePlace'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
