import 'package:flutter/material.dart';
import 'package:uxe_loft/Cart.dart';
import 'package:uxe_loft/Category.dart';
import 'package:uxe_loft/Message.dart';
import 'package:uxe_loft/Private.dart';

import 'Appcolor.dart';
import 'Home.dart';
class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {


  int _currentIndex=0;
  List _screens=[Home(),Category(),Message(),Cart(),Private()];

  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _updateIndex,
        selectedItemColor: Appcolor.PrimaryColor,
        selectedFontSize: 13,
        unselectedFontSize: 13,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),

          ),
          BottomNavigationBarItem(
            label: "Category",
            icon: Icon(Icons.category),
          ),
          BottomNavigationBarItem(
            label: "Message",
            icon: Icon(Icons.message),
          ),
          BottomNavigationBarItem(
            label: "Cart",
            icon: Icon(Icons.shopping_cart),
          ),
          BottomNavigationBarItem(
            label: "Private",
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
