import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: GNav(  
        color: Color.fromRGBO(64, 148, 251, 1),
        activeColor: const Color.fromARGB(255, 254, 254, 254),
        tabActiveBorder: Border.all(color: Color.fromARGB(255, 47, 104, 226)),
        tabBackgroundColor: Color.fromARGB(255, 22, 171, 230),
        mainAxisAlignment: MainAxisAlignment.center,
        //tabBorderRadius: 16,
        onTabChange: (value) => onTabChange!(value),
        tabs: const[

          GButton(
            icon: Icons.home,
            text: 'Shop',
          ),

          GButton(
            icon: Icons.shopping_bag_rounded,
            text: 'Cart',
          )

        ],
      ),
    );
  }
}