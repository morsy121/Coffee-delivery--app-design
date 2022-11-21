import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      this.onpressed,
      this.text,
      this.backgroundColor,
      this.width,
      this.hight});
  Function()? onpressed;
  String? text;
  Color? backgroundColor;
  double? width;
  double? hight;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
          minimumSize: MaterialStateProperty.all(Size(width!, hight!)),
          backgroundColor: MaterialStateProperty.all(backgroundColor)),
      onPressed: onpressed,
      child: Text(
        "$text",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
