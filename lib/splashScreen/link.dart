import 'package:flutter/material.dart';
import 'dart:async';

import 'package:project/screens/map_screen.dart';


class LinkLogo extends StatefulWidget {
const  LinkLogo({Key? key}) : super(key: key);

  @override
  State<LinkLogo> createState() => _LinkLogoState();
}

class _LinkLogoState extends State<LinkLogo> {

     @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      (() => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>const MapScreen(),
            ),
          )),
    );
  } 
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Link',
          style: TextStyle(
              fontSize: 50,
              color: Colors.green,
              fontWeight: FontWeight.w800,
              fontFamily: 'Quicksand'),
        ),
      ),
    );
  }
}
