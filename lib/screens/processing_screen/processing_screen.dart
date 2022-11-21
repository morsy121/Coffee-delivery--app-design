import 'package:coffeeapp/screens/confirmed_screen/confirm_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../../Layout/Home_layout.dart';

class ProcessingScreen extends StatefulWidget {
  const ProcessingScreen({super.key});

  @override
  State<ProcessingScreen> createState() => _ProcessingScreenState();
}

class _ProcessingScreenState extends State<ProcessingScreen> {
  void initState() {
    super.initState();
    goToNextView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          Image.asset(
            "assets/images/Reload.gif",
            fit: BoxFit.cover,
          ),
          Text(
            "Your order is processing",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          )
        ],
      ),
    );
  }

  void goToNextView() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => ConfirmScreen(), transition: Transition.fade);
    });
  }
}
