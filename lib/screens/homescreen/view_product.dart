import 'package:coffeeapp/cubit/cubit.dart';
import 'package:coffeeapp/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewProducts extends StatelessWidget {
  const ViewProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CoffeeAppCubit(),
      child: BlocConsumer<CoffeeAppCubit, CoffeeAppState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = CoffeeAppCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              centerTitle: true,
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.black),
              title: Text(
                "Asley Cafe",
                style: TextStyle(color: Colors.black),
              ),
            ),
            body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 5, bottom: 10),
                    child: Container(
                      width: double.infinity,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
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
                                  "Reseve a table now ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  textAlign: TextAlign.start,
                                  " Lorem ipsum dolor sit amet, cons \n ectetur adipiscing elit. ",
                                  style: TextStyle(color: Color(0xff9D9D9D)),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(Icons.arrow_forward_ios),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        Text(
                          "Coffee",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "Cakes",
                          style:
                              TextStyle(color: Color(0xff9D9D9D), fontSize: 20),
                        ),
                        Spacer(),
                        Icon(Icons.menu_sharp)
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 10, right: 20),
                    child: Text(
                      "Today’s special",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 25, right: 20),
                    child: Container(
                      height: 900,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 1,
                            childAspectRatio: 0.7,
                            mainAxisSpacing: 10),
                        physics: BouncingScrollPhysics(),
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return Container(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  side: BorderSide.none,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "${cubit.imageGridView[index]}",
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      "${cubit.nameOfCoffee[index]}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.currency_rupee,
                                          color: Colors.black,
                                        ),
                                        Text(
                                            '\$${cubit.priceoFCoffeeGridView[index]}'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
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
}
