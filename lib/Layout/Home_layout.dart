import 'package:coffeeapp/cubit/cubit.dart';
import 'package:coffeeapp/cubit/states.dart';
import 'package:coffeeapp/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeLyout extends StatelessWidget {
  const HomeLyout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CoffeeAppCubit(),
      child: BlocConsumer<CoffeeAppCubit, CoffeeAppState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
              body: CoffeeAppCubit.get(context)
                  .bottomscreen[CoffeeAppCubit.get(context).curreentIndex],
              bottomNavigationBar: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                ),
                child: Material(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  child: BottomNavigationBar(
                    elevation: 20,
                    iconSize: 30,
                    type: BottomNavigationBarType.fixed,
                    selectedItemColor: Color(0xff314D45),
                    backgroundColor: Colors.white,
                    unselectedItemColor: Color(0xff9D9D9D),
                    currentIndex: CoffeeAppCubit.get(context).curreentIndex,
                    onTap: (index) {
                      CoffeeAppCubit.get(context).changeBottom(index);
                    },
                    items: const [
                      BottomNavigationBarItem(
                          icon: (Icon(Icons.home)), label: ''),
                      BottomNavigationBarItem(
                          icon: (Icon(Icons.shopping_bag)), label: ''),
                      BottomNavigationBarItem(
                          icon: (Icon(Icons.location_on)), label: ''),
                      BottomNavigationBarItem(
                          icon: (Icon(Icons.favorite)), label: ''),
                      BottomNavigationBarItem(
                          icon: (Icon(Icons.person)), label: ''),
                    ],
                  ),
                ),
              ));
        },
      ),
    );
  }
}
