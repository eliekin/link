// import 'package:flutter/material.dart';
// import 'package:project/widgets/categories_tile.dart';

// import '../widgets/activeMap.dart';

// class busRouteScreen extends StatefulWidget {
//   busRouteScreen({Key? key}) : super(key: key);

//   static const routeName = '/busRouteScreenScreen';

//   @override
//   State<busRouteScreen> createState() => _busRouteScreenState();
// }

// class _busRouteScreenState extends State<busRouteScreen> {

//   TextEditingController? searchText;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.grey.withOpacity(0.1),
//           elevation: 0.0,
//           iconTheme: IconThemeData(color: Colors.black, size: 30),
//         ),
//         body: Stack(children: [
//           Container(
//             width: MediaQuery.of(context).size.width,
//             height: MediaQuery.of(context).size.height,
//             child: activeMap(),
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//                  Padding(
//                    padding: const EdgeInsets.only(left:20),
//                    child: Row(
//                      children: [
//                 Icon(Icons.timer, color:Colors.teal),
//                 Text('Estimated Arrival Time : ', style: TextStyle(color:Colors.teal, fontSize: 17,fontWeight: FontWeight.bold),)
//               ],),
//                  ),                
//                CategoriesTile(),
//             ],
//           ),
   
//         ]
//         ));
//   }
// }
