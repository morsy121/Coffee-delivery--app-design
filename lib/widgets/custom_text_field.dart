import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      required this.hintText,
      required this.maxLines,
      this.controller,
      this.type,
      this.vaildate,
      this.isclickable,
      this.sufixIcon,
      this.onpressed});
  final String hintText;
  final int maxLines;
  String? Function(String?)? vaildate;
  TextInputType? type;
  TextEditingController? controller;
  IconData? sufixIcon;
  IconData? prefixIcon;
  bool? isclickable = true;
  Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: vaildate,
      enabled: isclickable,
      keyboardType: type,
      controller: controller,
      cursorColor: Colors.black,
      maxLines: maxLines,
      decoration: InputDecoration(
        fillColor: Color(0xffCDCDCD),
        filled: true,
        prefixIcon: Icon(
          Icons.search,
          color: Colors.grey,
        ),
        suffixIcon: IconButton(
          icon: Icon(sufixIcon),
          onPressed: onpressed,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xffAEAEAC),
        ),
        border: InputBorder.none,
        enabledBorder: buildborder(),
        focusedBorder: buildborder(
          Colors.white,
        ),
      ),
    );
  }

  OutlineInputBorder buildborder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Color(0xffE6E6E4), width: 2));
  }
}
