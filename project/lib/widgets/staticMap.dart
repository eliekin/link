import 'package:flutter/material.dart';
import 'package:project/screens/details_screen.dart';

class staticMap extends StatelessWidget {
  const staticMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 1.7,
      color: Colors.black26,
      child: Center(
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'image/google.jpg',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover
            )),
      ),
    );
  }
}
