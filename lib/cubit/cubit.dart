import 'dart:collection';

import 'package:bloc/bloc.dart';
import 'package:coffeeapp/cubit/states.dart';
import 'package:coffeeapp/screens/favourites/Favourites_screen.dart';
import 'package:coffeeapp/screens/location/location_screen.dart';
import 'package:coffeeapp/screens/shoppping_bag/shopping_bag.dart';
import 'package:coffeeapp/screens/users/userscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../models/coffee_popular.dart';
import '../screens/homescreen/homescreen.dart';

class CoffeeAppCubit extends Cubit<CoffeeAppState> {
  CoffeeAppCubit() : super(CoffeeAppInitaial());

  static CoffeeAppCubit get(context) => BlocProvider.of(context);

  int curreentIndex = 0;

  List<Widget> bottomscreen = [
    HomeScreen(),
    ShoppingBagScreen(),
    LocationScreen(),
    FavouritesScreen(),
    UserScreen(),
  ];

  void changeBottom(int index) {
    curreentIndex = index;
    emit(CoffeeChangeBottomNavBarState());
  }

  int activeBtnIndex = 0;

  List<LabelAndFunction> btnLbelsAndFunctions = [
    LabelAndFunction(label: "100ml", function: () {}),
    LabelAndFunction(label: "250", function: () {}),
    LabelAndFunction(label: "500ml", function: () {}),
  ];

  void changecolor(index) {
    activeBtnIndex = index;
    emit(CoffeeChaneColor());
  }

  // Popular Coffee
  List<String> popularCoffeeImage = [
    'assets/images/Rectangle 43.png',
    'assets/images/Rectangle 43 (2).png',
    'assets/images/Rectangle 43 (1).png',
    'assets/images/Rectangle 43 (3).png',
  ];

  List<String> delivery = ["7", "8", "10", "4"];

  List<String> rating = ["7", "8", "10", "4"];

  List<String> typeofCoffee = ["Cappuccino", "Chocolate", " Coffee", " Coffee"];

  List<String> price = [
    "550.00",
    "510.00",
    "510.00",
    "550.00",
  ];
  List<String> coffePlace = [
    "Coffee cafe",
    "Bunny cafe",
    "Coffee hut",
    "Coffee Cup",
  ];

  final List<CoffeePopular> coffeepopularList = [
    CoffeePopular(
        image: 'assets/images/Rectangle 43.png',
        rate: '7',
        typeofCoffee: 'Cappuccino',
        price: '(\$550.00)',
        coffeepalce: 'Coffee cafe',
        delivery: "7"),
    CoffeePopular(
      image: 'assets/images/Rectangle 43 (2).png',
      rate: '8',
      typeofCoffee: 'Chocolate',
      price: '(\$510.00)',
      coffeepalce: "Bunny cafe",
      delivery: "8",
    ),
    CoffeePopular(
      image: 'assets/images/Rectangle 43 (1).png',
      rate: '10',
      typeofCoffee: 'Coffee',
      price: '(\$510.00)',
      coffeepalce: "Coffee hut",
      delivery: "10",
    ),
    CoffeePopular(
      image: 'assets/images/Rectangle 43 (3).png',
      rate: '4',
      typeofCoffee: 'Coffee',
      price: '(\$550.00)',
      coffeepalce: "Coffee Cup",
      delivery: "4",
    ),
  ];

  // Nearst Coffee
  List<String> nearstCoffeeImage = [
    'assets/images/Rectangle 13.png',
    'assets/images/Rectangle 14 (1).png',
    'assets/images/Rectangle 13.png',
    'assets/images/Rectangle 14 (1).png',
  ];

  List<String> distance = [
    "1.5",
    "2.4",
    "3.5",
    "2.5",
  ];

  List<String> placeCoffee = [
    "Asley coffee",
    "Old town coffee",
    "Asley coffee",
    "Old town coffee",
  ];

  List<String> ratingOfPlaceCoffee = [
    "5.0/105",
    "4.0/125",
    "5.0/105",
    "4.0/125",
  ];

  final List<NearstCoffee> nearstCoffee = [
    NearstCoffee(
      image: 'assets/images/Rectangle 13.png',
      rate: '5.0/ 105 ',
      typeofCoffee: 'Asley Coffee',
    ),
    NearstCoffee(
      image: 'assets/images/Rectangle 14 (1).png',
      rate: '4.0/ 125',
      typeofCoffee: 'Old Twon Coffee',
    ),
    NearstCoffee(
      image: 'assets/images/Rectangle 13.png',
      rate: '10',
      typeofCoffee: 'Asley Coffee',
    ),
    NearstCoffee(
      image: 'assets/images/Rectangle 14 (1).png',
      rate: '4',
      typeofCoffee: 'Old Twon Coffee',
    ),
  ];
  //

  int counter = 1;
  void add() {
    counter++;
    emit(Coffeeincrease());
  }

  void minus() {
    counter--;
    emit(Coffeeminus());
  }

  /// Stepper

  //
  Color textColor = Colors.white;
  Color bacground = Color(0xff314D45);

  void changeColorOfSize() {
    textColor = bacground;
    bacground = textColor;
    emit(CoffeeChaneColor());
  }

  List<String> imageGridView = [
    "assets/images/Rectangle 29.png",
    "assets/images/Rectangle 30.png",
    "assets/images/Rectangle 31.png",
    "assets/images/Rectangle 32.png",
    "assets/images/Rectangle 33 (1).png",
    "assets/images/Rectangle 34.png"
  ];

  List<String> nameOfCoffee = [
    "Avocado Coffee",
    "South filtered",
    "Cappuccino",
    "Normal coffee",
    "Cortadito",
    "Chocolate Coffee",
  ];

  List<String> priceoFCoffeeGridView = [
    "134.00",
    "234.00",
    "124.00",
    "136.00",
    "234.00",
    "170.00",
  ];

  ///
  ///Fvaourites
  List<String> favouritesImage = [
    "assets/images/Rectangle 30.png",
    "assets/images/Rectangle 33 (1).png",
    'assets/images/Rectangle 43 (4).png',
    'assets/images/Rectangle 43 (5).png',
  ];
  List<String> nameOfFavouritesCoffee = [
    "South Filterd",
    "Cortadito",
    "Cappuccino",
    "Coffee"
  ];
  List<String> priceOfFavouries = ["234", "234", "550", "550"];

  //Maps
}
