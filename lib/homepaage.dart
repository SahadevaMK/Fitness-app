import 'package:fitness/ram.dart';
import 'package:fitness/trainer.dart';
import 'package:flutter/material.dart';

import 'NAM.dart';
import 'home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _bottomNavBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  final List<Widget> _children = [
    UserHome(),
    Trainer(),
    Ram(),
    Nam(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _bottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.apps),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.people),label: 'Trainer'),
          BottomNavigationBarItem(icon: Icon(Icons.message_outlined),label: 'Message'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),

        ],
      ),
    );
  }
}
