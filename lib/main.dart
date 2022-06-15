import 'package:flutter/material.dart';
import 'package:project/provider/place_details.dart';
import 'package:project/provider/userCurentLoaction.dart';
import 'package:project/screens/splashScreen.dart';
import 'package:project/widgets/locationService.dart';
import 'package:provider/provider.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
//  Map terminals_names_horraire = terminals_hours;

MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PlaceDetails(),),
        ChangeNotifierProvider(create: (context) => UserCurrentLocation(),),
        ChangeNotifierProvider(create: (context) => LocationService(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false, 
        title: 'Link',
        theme: ThemeData(
          primarySwatch: Colors.green,
          fontFamily: 'Open Sans',
        ),
        home:  SplasScreen(),
      ),
    );
  }
}

