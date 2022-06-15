// import 'dart:ffi';

// import 'package:flutter/material.dart';

// import 'package:flutter/material.dart';
// import 'package:project/data/data.dart';
// import 'package:project/screens/details_screen.dart';
// import './home_screen.dart';
// import 'bus_route.dart';

// class tabsScreen extends StatefulWidget {
//   //const TabsScreen({Key? key}) : super(key: key);
//   static const routeName = '/tabsScreen';
//   @override
//   _tabsScreenState createState() => _tabsScreenState();
// }

// class _tabsScreenState extends State<tabsScreen> {
//   late List<Map<String, dynamic>> _pages;
//   String? terminals_names_horraire;

//   @override
//   void initState() {
//     _pages = [
//       // {
//       //   'page': detailsScreen(),
//       // },
//       {
//         'page': busRouteScreen(),
//       },
//     ];
//     super.initState();
//   }

//   int _selectedPageIndex = 0;

//   void _selectPage(int index) {
//     setState(() {
//       _selectedPageIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         bottomNavigationBar: BottomNavigationBar(
//             type: BottomNavigationBarType.shifting,
//             onTap: _selectPage,
//             elevation: 0.0,
//             currentIndex: _selectedPageIndex,
//             items: const [
//               // BottomNavigationBarItem(
//               //     backgroundColor: Colors.green,
//               //     icon: Icon(Icons.home),
//               //     label: 'Home'),
//               BottomNavigationBarItem(
//                   backgroundColor: Colors.green,
//                   icon: Icon(Icons.route),
//                   label: 'Bus Route'),
//             ]),
//         body: _pages[_selectedPageIndex]['page']);
//   }
// }
