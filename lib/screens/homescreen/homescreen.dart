import 'package:coffeeapp/cubit/cubit.dart';
import 'package:coffeeapp/cubit/states.dart';
import 'package:coffeeapp/screens/homescreen/coffee_details.dart';
import 'package:coffeeapp/screens/homescreen/nearst_datails_screen.dart';
import 'package:coffeeapp/widgets/custom_nearst_coffee.dart';
import 'package:coffeeapp/widgets/custom_popular_coffee.dart';
import 'package:coffeeapp/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Core/colors.dart';
import '../../models/coffee_popular.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CoffeeAppCubit(),
      child: BlocConsumer<CoffeeAppCubit, CoffeeAppState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = CoffeeAppCubit.get(context);
          return Scaffold(
            body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.only(top: 65, left: 20, right: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('Get your',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Coffee',
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: mainColor,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'on one finger tap',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        // CircleAvatar(
                        //   radius: 30,
                        //   backgroundImage: NetworkImage(
                        //       'https://scontent.fcai21-2.fna.fbcdn.net/v/t39.30808-6/315640925_3288179308166035_987865965224641120_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=3Li6EelhRb4AX-9aitc&_nc_ht=scontent.fcai21-2.fna&oh=00_AfDaopAxl-0YG2RavErOyZTUUQZc3RT48J6xp1CFX8F8kQ&oe=637BC7AE'),
                        // ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextField(
                          hintText: 'Search AnyThings',
                          maxLines: 1,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Popular Coffee',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        SingleChildScrollView(
                          child: Expanded(
                            child: Container(
                              height: 260,
                              child: ListView.builder(
                                physics: BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemCount: CoffeeAppCubit.get(context)
                                    .popularCoffeeImage
                                    .length,
                                itemBuilder: (BuildContext context, int index) {
                                  return InkWell(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context) {
                                          return CoffeeDetails(
                                              coffeepopular: CoffeePopular(
                                                  image: cubit
                                                      .coffeepopularList[index]
                                                      .image,
                                                  rate: cubit
                                                      .coffeepopularList[index]
                                                      .rate,
                                                  typeofCoffee: cubit
                                                      .coffeepopularList[index]
                                                      .typeofCoffee,
                                                  price: cubit
                                                      .coffeepopularList[index]
                                                      .price));
                                        },
                                      ));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 15),
                                      child: CustomPopularCoffee(
                                        rate: CoffeeAppCubit.get(context)
                                            .rating[index],
                                        timedeleivery:
                                            CoffeeAppCubit.get(context)
                                                .delivery[index],
                                        nameofimages:
                                            CoffeeAppCubit.get(context)
                                                .popularCoffeeImage[index],
                                        typeOfCoffee:
                                            CoffeeAppCubit.get(context)
                                                .typeofCoffee[index],
                                        coffePlace: CoffeeAppCubit.get(context)
                                            .coffePlace[index],
                                        price: CoffeeAppCubit.get(context)
                                            .price[index],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                        // SingleChildScrollView(
                        //   child: Expanded(
                        //     child: Container(
                        //       height: 260,
                        //       child: ListView.builder(
                        //         physics: BouncingScrollPhysics(),
                        //         scrollDirection: Axis.horizontal,
                        //         itemCount: CoffeeAppCubit.get(context)
                        //             .popularCoffeeImage
                        //             .length,
                        //         itemBuilder: (BuildContext context, int index) {
                        //           return InkWell(
                        //             onTap: () {
                        //               Navigator.push(context, MaterialPageRoute(
                        //                 builder: (context) {
                        //                   return CoffeeDetails();
                        //                 },
                        //               ));
                        //             },
                        //             child: Padding(
                        //               padding: const EdgeInsets.only(right: 15),
                        //               child: CustomPopularCoffee(
                        //                 rate: CoffeeAppCubit.get(context)
                        //                     .rating[index],
                        //                 timedeleivery:
                        //                     CoffeeAppCubit.get(context)
                        //                         .delivery[index],
                        //                 nameofimages:
                        //                     CoffeeAppCubit.get(context)
                        //                         .popularCoffeeImage[index],
                        //                 typeOfCoffee:
                        //                     CoffeeAppCubit.get(context)
                        //                         .typeofCoffee[index],
                        //                 coffePlace: CoffeeAppCubit.get(context)
                        //                     .coffePlace[index],
                        //                 price: CoffeeAppCubit.get(context)
                        //                     .price[index],
                        //               ),
                        //             ),
                        //           );
                        //         },
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        Row(
                          children: [
                            Text(
                              'Nearest coffee shops',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            InkWell(
                              onTap: () {
                                print("morsy");
                              },
                              child: Text(
                                'View All',
                                style: TextStyle(
                                    color: mainColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        SingleChildScrollView(
                          child: Expanded(
                            child: Container(
                              height: 260,
                              child: ListView.builder(
                                physics: BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemCount: cubit.nearstCoffeeImage.length,
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context) {
                                          return NearstDetailsScreen(
                                            nearstCoffee: NearstCoffee(
                                              image: cubit
                                                  .nearstCoffee[index].image,
                                              rate: cubit
                                                  .nearstCoffee[index].rate,
                                              typeofCoffee: cubit
                                                  .nearstCoffee[index]
                                                  .typeofCoffee,
                                              price: cubit
                                                  .nearstCoffee[index].price,
                                            ),
                                          );
                                        },
                                      ));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, right: 15),
                                      child: CustomNearstCoffee(
                                        distance: cubit.distance[index],
                                        nearstCoffeeImage:
                                            cubit.nearstCoffeeImage[index],
                                        placeCoffee: cubit.placeCoffee[index],
                                        ratingOfPlaceCoffee:
                                            cubit.ratingOfPlaceCoffee[index],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
