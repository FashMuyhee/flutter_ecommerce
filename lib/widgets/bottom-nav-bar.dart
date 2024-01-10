import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  final void Function(int)? onTabChange;
  const BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return GNav(
        color: Colors.black,
        activeColor: Colors.white,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBackgroundColor: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        tabBorderRadius: 10,
        tabMargin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        gap: 10,
        iconSize: 24,
        onTabChange: (index) => onTabChange!(index),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Shop',
          ),
          GButton(icon: Icons.shopping_bag, text: 'Cart'),
        ]);
  }
}
