import 'package:coffeeapp/Core/colors.dart';
import 'package:coffeeapp/Layout/Home_layout.dart';
import 'package:coffeeapp/screens/homescreen/coffee_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    goToNextView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/image 1.png',
                fit: BoxFit.cover,
              ),
            ],
          ),
          Positioned(
            top: 580,
            left: 100,
            child: Row(
              children: [
                Text(
                  'Cup',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Coffee',
                  style: TextStyle(
                      color: mainColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void goToNextView() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => HomeLyout(), transition: Transition.fade);
    });
  }
}
