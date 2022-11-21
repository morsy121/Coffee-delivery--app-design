// import 'package:flutter/material.dart';
// import 'models/coffee_popular.dart';

// class Test extends StatefulWidget {
//   const Test({super.key});

//   @override
//   State<Test> createState() => _TestState();
// }

// int activeBtnIndex = 0;

// List<LabelAndFunction> btnLbelsAndFunctions = [
//   LabelAndFunction(label: "100ml", function: () {}),
//   LabelAndFunction(label: "250ml", function: () {}),
//   LabelAndFunction(label: "500ml", function: () {}),
// ];

// class _TestState extends State<Test> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 50,
//       child: ListView.builder(
//         itemCount: btnLbelsAndFunctions.length,
//         scrollDirection: Axis.horizontal,
//         itemBuilder: (context, index) => Padding(
//           padding: const EdgeInsets.only(left: 15),
//           child: Container(
//             width: 110,
//             child: TextButton(
//               child: Text(
//                 btnLbelsAndFunctions.elementAt(index).label,
//                 style: TextStyle(
//                     color: activeBtnIndex == index
//                         ? Colors.white
//                         : Color(0xff314D45)),
//               ),
//               onPressed: () {
//                 setState(() {
//                   activeBtnIndex = index;
//                 });

//                 btnLbelsAndFunctions.elementAt(index).function;
//               },
//               style: TextButton.styleFrom(
//                 shape: RoundedRectangleBorder(
//                     side: BorderSide(color: Color(0xff314D45), width: 1.5),
//                     borderRadius: BorderRadius.circular(10)),
//                 backgroundColor: activeBtnIndex == index
//                     ? Color(0xff314D45)
//                     : Colors.transparent,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
