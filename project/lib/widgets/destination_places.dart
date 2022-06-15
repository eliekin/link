// import 'package:flutter/material.dart';
// import 'package:project/data/data.dart';
// import 'package:project/screens/details_screen.dart';
// import 'package:project/screens/tabs_screen.dart';

// class ourTerminals extends StatelessWidget {
//   List? names;
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//         child: ListView.builder(
//       itemCount: terminals_names.length,
//       itemBuilder: (context, index) => InkWell(
//           onTap: () {
//             Navigator.of(context).pushNamed(tabsScreen.routeName);
//           },
//           child: Card(
//               elevation: 0.5,
//               child: Column(
//                 children: [
//                   ListTile(
//                     leading: Image.asset(
//                       'image/bus.png',
//                       color: Colors.green,
//                     ),
//                     trailing: Icon(
//                       Icons.arrow_forward_ios_rounded,
//                       color: Colors.green,
//                       size: 20,
//                     ),
//                     title: Text(
//                       terminals_names[index],
//                       style: TextStyle(fontSize: 20, color: Colors.black),
//                     ),
                   
//                   ),
//                 ],
//               ))
              
//           ),
//     ));
//   }
// }