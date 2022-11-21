import 'package:coffeeapp/Core/colors.dart';
import 'package:coffeeapp/Layout/Home_layout.dart';
import 'package:flutter/material.dart';

class ConfirmScreen extends StatelessWidget {
  const ConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          Image.asset(
            "assets/images/Done.gif",
            fit: BoxFit.cover,
          ),
          const Text(
            "Order Confirmed!",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
          ),
          const SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const HomeLyout();
                },
              ));
            },
            child: Text(
              "back to the homepage",
              style: TextStyle(
                color: mainColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
