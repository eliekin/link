import 'package:flutter/material.dart';
import 'package:project/splashScreen/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Link',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Open Sans',
      ),
      home: const SplasScreen(),
    );
  }
}
