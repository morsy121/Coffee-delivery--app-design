import 'package:coffeeapp/Core/colors.dart';
import 'package:coffeeapp/cubit/cubit.dart';
import 'package:coffeeapp/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

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
              iconTheme: const IconThemeData(color: Colors.black),
              title: const Text(
                " Your Favourite Coffee",
                style: TextStyle(color: Colors.black),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Image.asset(cubit.favouritesImage[index],
                                    height: 100, fit: BoxFit.cover),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "${cubit.nameOfFavouritesCoffee[index]} ",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      textAlign: TextAlign.start,
                                      cubit.priceOfFavouries[index],
                                      style: TextStyle(color: primaryColor),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
