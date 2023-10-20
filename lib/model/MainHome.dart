import 'package:flutter/material.dart';
import 'package:myecom/constants/color.dart';
import 'package:myecom/main.dart';
import 'package:myecom/view/Categor.dart';
import 'package:myecom/view/Profile.dart';
import 'package:myecom/view/Sign1.dart';
import 'package:myecom/view/categories.dart';
import 'package:myecom/view/login.dart';

import 'package:myecom/view/orders.dart';
import 'package:myecom/view/homepage.dart';

class MainHome extends StatefulWidget {
  MainHome({Key? key}) : super(key: key);

  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  List<Widget> pages = [
    HomePage(),
    Categoryy(),
    Orders(),
    ProfileScreen(),
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      // ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home page',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Categories'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Orders'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Account'),
        ],
        onTap: onTap,
      ),
    );
  }
}
