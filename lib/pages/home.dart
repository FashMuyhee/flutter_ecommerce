import '/pages/cart.dart';
import '/pages/shop.dart';

import '/widgets/bottom-nav-bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTabIndex = 0;
  final List<Widget> _pages = [const ShopPage(), const CartPage()];

  void onTabChange(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => {Scaffold.of(context).openDrawer()},
          );
        }),
      ),
      body: _pages[currentTabIndex],
      drawer: const Drawer(
        backgroundColor: Colors.black12,
      ),
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => onTabChange(index),
      ),
    );
  }
}
