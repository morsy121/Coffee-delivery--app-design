import 'package:coffeeapp/cubit/cubit.dart';
import 'package:coffeeapp/cubit/states.dart';
import 'package:coffeeapp/screens/processing_screen/processing_screen.dart';
import 'package:coffeeapp/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Core/colors.dart';

class OrderScreen extends StatelessWidget {
  OrderScreen({super.key});
  @override
  int currentstep = 0;
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CoffeeAppCubit(),
      child: BlocConsumer<CoffeeAppCubit, CoffeeAppState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = CoffeeAppCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              title: Text(
                "Place Order",
                style: TextStyle(color: Colors.black),
              ),
              centerTitle: true,
              iconTheme: IconThemeData(color: Colors.black),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                        width: double.infinity,
                        height: 250,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 20, bottom: 8),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 30,
                                    color: mainColor,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "Hotel Diamond Palace",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 70,
                                  ),
                                  Image.asset("assets/images/edit-3.png")
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 63, bottom: 20),
                              child: Text(
                                "394K, Central Park, New Delhi, \n India",
                                style: TextStyle(color: Color(0xff9D9D9D)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 20),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.local_activity,
                                    size: 30,
                                    color: mainColor,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3),
                                    child: Text(
                                      "Middle road Sediago",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 64),
                              child: Text(
                                "201, sector 25,Centre Park, New \n Delhi, India",
                                style: TextStyle(color: Color(0xff9D9D9D)),
                              ),
                            )
                          ],
                        )),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 20),
                    child: Container(
                      width: double.infinity,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Card(
                        child: Row(
                          children: [
                            Image.asset("assets/images/Rectangle 45.png",
                                height: 150, fit: BoxFit.cover),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Capaccino ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  textAlign: TextAlign.start,
                                  " One 500 ml with \n extra ice",
                                  style: TextStyle(color: Color(0xff9D9D9D)),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Color(0xffF9F1EA),
                                  borderRadius: BorderRadius.circular(10)),
                              child: IconButton(
                                icon: Icon(Icons.remove),
                                color: mainColor,
                                onPressed: () {
                                  cubit.minus();
                                },
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "${cubit.counter}",
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: mainColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: IconButton(
                                icon: Icon(
                                  Icons.add,
                                ),
                                color: Colors.white,
                                onPressed: () {
                                  cubit.add();
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffFFFFFF),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Text(
                                    "Selected",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                Text("01"),
                              ],
                            ),
                          ),
                          Divider(
                            height: 1,
                            color: Color(0xffECECEC),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Subtotal",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.currency_rupee,
                                      color: Colors.black,
                                    ),
                                    Text('\$550.00'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            height: 1,
                            color: Color(0xffECECEC),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Discount",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.currency_rupee,
                                      color: Colors.black,
                                    ),
                                    Text('\$90.00'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            height: 1,
                            color: Color(0xffECECEC),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Delivery",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.currency_rupee,
                                      color: Colors.black,
                                    ),
                                    Text('50'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            height: 1,
                            color: Color(0xffECECEC),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  child: Text(
                                    "Total",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.currency_rupee,
                                      color: Colors.black,
                                    ),
                                    Text('\$510.00'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: CustomButton(
                      width: double.infinity,
                      hight: 55,
                      backgroundColor: Color(0xff314D45),
                      text: "Pay Now",
                      onpressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ProcessingScreen();
                          },
                        ));
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  List<Step> steps = [
    Step(
      title: Text("Hotel Diamond Palace"),
      content: Text("394K, Central Park,New Delhi, India"),
    ),
    Step(
        title: Text("Middle road Sediago"),
        content: Text("201, sector 25,Centre Park, New Delhi, India"))
  ];
}
