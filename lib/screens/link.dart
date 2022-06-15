import 'package:flutter/material.dart';
import 'dart:async';

import 'package:project/screens/tabs_screen.dart';

class LinkLogo extends StatefulWidget {
  LinkLogo({Key? key}) : super(key: key);

  @override
  State<LinkLogo> createState() => _LinkLogoState();
}

class _LinkLogoState extends State<LinkLogo> {

     @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 2),
      (() => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => tabsScreen(),
            ),
          )),
    );
  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: const Text(
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
