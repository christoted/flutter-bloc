import 'package:flutter/material.dart';
import 'package:grow_now_clone/screens/campaign/campaign.dart';
import 'package:grow_now_clone/screens/home/home.dart';
import 'package:grow_now_clone/screens/profile/profile.dart';


class BottomNavMain extends StatefulWidget {
  const BottomNavMain({Key? key}) : super(key: key);

  @override
  State<BottomNavMain> createState() => _BottomNavMainState();
}

class _BottomNavMainState extends State<BottomNavMain> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
     HomeScreen(),
     CampaignScreen(),
     ProfileScreen()
    ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar:  BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Campaign'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Profile'
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}