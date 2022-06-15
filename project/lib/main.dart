import 'package:flutter/material.dart';
import 'package:project/screens/bus_route.dart';
import 'package:project/screens/details_screen.dart';
import 'package:project/screens/tabs_screen.dart';
import 'package:project/widgets/activeMap.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
//  Map terminals_names_horraire = terminals_hours;

MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Link',
      
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home:  activeMap(),
      // routes: {
      //   detailsScreen.routeName:(context) => detailsScreen(),
      //   busRouteScreen.routeName: ((context) => busRouteScreen()),
      //   tabsScreen.routeName:(context) => tabsScreen()
      // },
    );
  }
}

