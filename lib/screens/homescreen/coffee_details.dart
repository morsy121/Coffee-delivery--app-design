import 'package:coffeeapp/Core/colors.dart';
import 'package:coffeeapp/cubit/cubit.dart';
import 'package:coffeeapp/cubit/states.dart';
import 'package:coffeeapp/models/coffee_popular.dart';
import 'package:coffeeapp/screens/order_screen/order_screen.dart';
import 'package:coffeeapp/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:readmore/readmore.dart';

import '../../widgets/custom_button.dart';

// ignore: must_be_immutable
class CoffeeDetails extends StatelessWidget {
  CoffeeDetails({
    super.key,
    this.coffeepopular,
  });
  CoffeePopular? coffeepopular;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CoffeeAppCubit(),
      child: BlocConsumer<CoffeeAppCubit, CoffeeAppState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = CoffeeAppCubit.get(context);
          return Scaffold(
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(
                          coffeepopular!.image,
                          width: 500,
                          height: 300,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          Text(
                            "Details",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Color(0xff616A5B),
                                borderRadius: BorderRadius.circular(20)),
                            child: Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                            ),
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
                        coffeepopular!.typeofCoffee,
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
                            "${coffeepopular!.rate}",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
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
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "${coffeepopular!.price}",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: ReadMoreText(
                    ' A cappuccino is an espresso-based coffee \n drink that originated in Austria with later development taking place in Italy.. ',
                    style: TextStyle(color: Color(0xff9D9D9D), fontSize: 17),
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
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [Image.asset("assets/images/Group 84.png")],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 25),
                  child: Text(
                    "Choose size",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                SingleChildScrollView(
                  child: Container(
                    height: 50,
                    child: Expanded(
                      child: ListView.builder(
                        itemCount: cubit.btnLbelsAndFunctions.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Container(
                            width: 110,
                            child: TextButton(
                              child: Text(
                                cubit.btnLbelsAndFunctions
                                    .elementAt(index)
                                    .label,
                                style: TextStyle(
                                    color: cubit.activeBtnIndex == index
                                        ? Colors.white
                                        : Color(0xff314D45)),
                              ),
                              onPressed: () {
                                cubit.changecolor(index);
                                cubit.btnLbelsAndFunctions
                                    .elementAt(index)
                                    .function;
                              },
                              style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: Color(0xff314D45), width: 1.5),
                                    borderRadius: BorderRadius.circular(10)),
                                backgroundColor: cubit.activeBtnIndex == index
                                    ? Color(0xff314D45)
                                    : Colors.transparent,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color(0xffF9F1EA),
                            borderRadius: BorderRadius.circular(15)),
                        child: IconButton(
                          icon: Icon(Icons.remove),
                          color: mainColor,
                          onPressed: () {
                            cubit.minus();
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "${cubit.counter}",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: mainColor,
                            borderRadius: BorderRadius.circular(15)),
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
                      SizedBox(
                        width: 50,
                      ),
                      CustomButton(
                        backgroundColor: Color(0xff314D45),
                        width: 150,
                        hight: 50,
                        onpressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return OrderScreen();
                            },
                          ));
                        },
                        text: "Add To Cart",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
