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
      drawer: Drawer(
        backgroundColor: const Color.fromRGBO(33, 33, 33, 1),
        child: Column(
          children: [
            DrawerHeader(
              margin: const EdgeInsets.only(bottom: 10),
              child: Image.asset('assets/images/reebok-logo.png'),
            ),
            const ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.info,
                color: Colors.white,
              ),
              title: Text(
                'About',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => onTabChange(index),
      ),
    );
  }
}
