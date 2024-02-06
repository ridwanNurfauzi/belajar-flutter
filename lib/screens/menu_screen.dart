// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, unused_import

import 'package:belajar/screens/home_screen.dart';
import 'package:belajar/screens/input_form.dart';
import 'package:belajar/screens/latihan_form.dart';
import 'package:belajar/screens/list_screen.dart';
import 'package:belajar/screens/second_screen.dart';
import 'package:belajar/screens/third_screen.dart';
import 'package:flutter/material.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int _selectedTab = 0;
  var _pages = [
    HomeScreen(),
    ListSeaScreen(),
    BelajarForm(),
    Latihan1Form(),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (value) => _changeTab(value),
        selectedItemColor: Colors.deepPurpleAccent,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Second'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Third'),
          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card), label: 'Fourth'),
        ],
      ),
    );
  }
}
