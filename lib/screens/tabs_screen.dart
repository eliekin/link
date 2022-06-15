import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'package:project/screens/details_screen.dart';
import '../widgets/activeMap.dart';

class tabsScreen extends StatefulWidget {
  static const routeName = '/tabsScreen';
  @override
  _tabsScreenState createState() => _tabsScreenState();
}

class _tabsScreenState extends State<tabsScreen> {
  late List<Map<String, dynamic>> _pages;

  @override
  void initState() {
    _pages = [
      {
        'page': detailsScreen(),
      },
      {
        'page': activeMap(),
      },
    ];
    super.initState();
  }

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: bottomNavigatiionBar(),
        body: _pages[_selectedPageIndex]['page']);
  }

  GNav bottomNavigatiionBar() {
    return GNav(
        backgroundColor: Colors.green,
        selectedIndex: _selectedPageIndex,
        onTabChange: _selectPage,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        padding: EdgeInsets.all(15),
        duration: Duration(milliseconds: 900),
        activeColor: Colors.white,
        tabBorderRadius: 100,
        gap: 10,
        tabs: [
      const    GButton(
            icon: Icons.departure_board_rounded,
            text: 'Home',
            iconColor: Colors.white,
            textColor: Colors.white,
          ),
      const    GButton(
            text: 'Travel Map',
            icon: Icons.map_rounded,
            iconColor: Colors.white,
            textColor: Colors.white,
          ),
        ],
      );
  }
}
