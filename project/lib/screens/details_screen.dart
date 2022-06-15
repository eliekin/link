// import 'package:flutter/material.dart';
// import 'package:project/data/data.dart';
// import './bus_route.dart';

// class detailsScreen extends StatelessWidget {
//   static const routeName = '/detailsScreen';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//           margin: EdgeInsets.symmetric(horizontal: 20),
//           child: ListView(
//             children: [
//              Column(
//                crossAxisAlignment: CrossAxisAlignment.start,
//                children: [
//                      InkWell(
//                        hoverColor: Colors.yellow,
//                        onTap: () {
//                           Navigator.of(context).pushNamed(busRouteScreen.routeName);
//                        },
//                       child: Card(
//                          shape: RoundedRectangleBorder(
//                                          borderRadius: BorderRadius.circular(0)),
//                                    elevation: 5.5,
//                                    child: Column(
//                                      children: [
//                                        ListTile(
//                                          leading: Image.asset(
//                         'image/bus.png',
//                         color: Colors.green,
//                         width: 20,
//                         height: 20,
//                                          ),
//                                          trailing: Icon(
//                         Icons.arrow_forward_ios_rounded,
//                         color: Colors.green,
//                         size: 20,
//                                          ),
//                                          title: Text(
//                         'Kampala Bus Terminal',
//                         style: TextStyle(fontSize: 20, color: Colors.black),
//                                          ),
                                        
//                                        ),
//                            ],
//                          ),
//                        ),
//                      ),
//                      SizedBox(height: 20,),
//                      Padding(
//                        padding: const EdgeInsets.only(left:10.0),
//                        child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                          children: [
//                            Text('Departure Time'),
//                            SizedBox(height: 15),
//                       Text(terminals_hours['Kampala Bus Terminal'][0]),
//                       Text(terminals_hours['Kampala Bus Terminal'][1]),
//                      Text(terminals_hours['Kampala Bus Terminal'][2]),
//                      Text(terminals_hours['Kampala Bus Terminal'][3]),
//                      Text(terminals_hours['Kampala Bus Terminal'][4]),
//                      Text(terminals_hours['Kampala Bus Terminal'][5]),
//                      Text(terminals_hours['Kampala Bus Terminal'][6]),
//                      Text(terminals_hours['Kampala Bus Terminal'][7]),
//                      Text(terminals_hours['Kampala Bus Terminal'][8]),
//                      Text(terminals_hours['Kampala Bus Terminal'][9]),

//                          ],
//                        ),
//                      ),
//                      Divider(height: 1,),
//                     SizedBox(height: 20,),

//                           InkWell(
//                             hoverColor: Colors.yellow,
//                        onTap: () {
//                           Navigator.of(context).pushNamed(busRouteScreen.routeName);
//                        },
//                             child: Card(
//                                                  shape: RoundedRectangleBorder(
//                                               borderRadius: BorderRadius.circular(0)),
//                                         elevation: 5.5,
//                                         child: Column(
//                                           children: [
//                                             ListTile(
//                                               leading: Image.asset(
//                                                 'image/bus.png',
//                                                 color: Colors.green,
//                                                 width: 20,
//                                                 height: 20,
//                                               ),
//                                               trailing: Icon(
//                                                 Icons.arrow_forward_ios_rounded,
//                                                 color: Colors.green,
//                                                 size: 20,
//                                               ),
//                                               title: Text(
//                                                 'Masindi Bus Terminal',
//                                                 style: TextStyle(fontSize: 20, color: Colors.black),
//                                               ),
                                             
//                                             ),
//                                                    ],
//                                                  ),
//                                                ),
//                           ),
//                      SizedBox(height: 20,),
//                      Padding(
//                        padding: const EdgeInsets.only(left:10.0),
//                        child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                          children: [
//                            Text('Departure Time'),
//                            SizedBox(height: 15),
//                       Text(terminals_hours['Masindi Bus Terminal'][0]),
//                       Text(terminals_hours['Masindi Bus Terminal'][1]),
//                      Text(terminals_hours['Masindi Bus Terminal'][2]),
//                      Text(terminals_hours['Masindi Bus Terminal'][3]),
//                      Text(terminals_hours['Masindi Bus Terminal'][4]),
//                          ],
//                        ),
//                      ),
//                      Divider(height: 1,),
//                     SizedBox(height: 20,),

//                           InkWell(
//                             hoverColor: Colors.yellow,
//                        onTap: () {
//                           Navigator.of(context).pushNamed(busRouteScreen.routeName);
//                        },
//                             child: Card(
//                                                  shape: RoundedRectangleBorder(
//                                               borderRadius: BorderRadius.circular(0)),
//                                         elevation: 5.5,
//                                         child: Column(
//                                           children: [
//                                             ListTile(
//                                               leading: Image.asset(
//                                                 'image/bus.png',
//                                                 color: Colors.green,
//                                                 width: 20,
//                                                 height: 20,
//                                               ),
//                                               trailing: Icon(
//                                                 Icons.arrow_forward_ios_rounded,
//                                                 color: Colors.green,
//                                                 size: 20,
//                                               ),
//                                               title: Text(
//                                                 'Hoima Bus Terminal',
//                                                 style: TextStyle(fontSize: 20, color: Colors.black),
//                                               ),
                                             
//                                             ),
//                                                    ],
//                                                  ),
//                                                ),
//                           ),
//                      SizedBox(height: 20,),
//                      Padding(
//                        padding: const EdgeInsets.only(left:10.0),
//                        child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                          children: [
//                            Text('Departure Time'),
//                            SizedBox(height: 15),
//                       Text(terminals_hours['Hoima Bus Terminal'][0]),
//                       Text(terminals_hours['Hoima Bus Terminal'][1]),
//                      Text(terminals_hours['Hoima Bus Terminal'][2]),
//                      Text(terminals_hours['Hoima Bus Terminal'][3]),
//                      Text(terminals_hours['Hoima Bus Terminal'][4]),
//                          ],
//                        ),
//                      ),
//                      Divider(height: 1,),
//                     SizedBox(height: 20,),

//                           InkWell(
//                             hoverColor: Colors.yellow,
//                        onTap: () {
//                           Navigator.of(context).pushNamed(busRouteScreen.routeName);
//                        },
//                             child: Card(
//                                                  shape: RoundedRectangleBorder(
//                                               borderRadius: BorderRadius.circular(0)),
//                                         elevation: 5.5,
//                                         child: Column(
//                                           children: [
//                                             ListTile(
//                                               leading: Image.asset(
//                                                 'image/bus.png',
//                                                 color: Colors.green,
//                                                 width: 20,
//                                                 height: 20,
//                                               ),
//                                               trailing: Icon(
//                                                 Icons.arrow_forward_ios_rounded,
//                                                 color: Colors.green,
//                                                 size: 20,
//                                               ),
//                                               title: Text(
//                                                 'Fort Portal Bus Terminal',
//                                                 style: TextStyle(fontSize: 20, color: Colors.black),
//                                               ),
                                             
//                                             ),
//                                                    ],
//                                                  ),
//                                                ),
//                           ),
//                      SizedBox(height: 20,),
//                      Padding(
//                        padding: const EdgeInsets.only(left:10.0),
//                        child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                          children: [
//                            Text('Departure Time'),
//                            SizedBox(height: 15),
//                       Text(terminals_hours['Fort Portal Bus Terminal'][0]),
//                       Text(terminals_hours['Fort Portal Bus Terminal'][1]),
//                      Text(terminals_hours['Fort Portal Bus Terminal'][2]),
//                      Text(terminals_hours['Fort Portal Bus Terminal'][3]),
//                          ],
//                        ),
//                      ),
//                      Divider(height: 1,),
//                     SizedBox(height: 20,),

//                           InkWell(
//                             hoverColor: Colors.yellow,
//                        onTap: () {
//                           Navigator.of(context).pushNamed(busRouteScreen.routeName);
//                        },
//                             child: Card(
//                                                  shape: RoundedRectangleBorder(
//                                               borderRadius: BorderRadius.circular(0)),
//                                         elevation: 5.5,
//                                         child: Column(
//                                           children: [
//                                             ListTile(
//                                               leading: Image.asset(
//                                                 'image/bus.png',
//                                                 color: Colors.green,
//                                                 width: 20,
//                                                 height: 20,
//                                               ),
//                                               trailing: Icon(
//                                                 Icons.arrow_forward_ios_rounded,
//                                                 color: Colors.green,
//                                                 size: 20,
//                                               ),
//                                               title: Text(
//                                                 'Bundibugyo Bus Terminal',
//                                                 style: TextStyle(fontSize: 20, color: Colors.black),
//                                               ),
                                             
//                                             ),
//                                                    ],
//                                                  ),
//                                                ),
//                           ),
//                      SizedBox(height: 20,),
//                      Padding(
//                        padding: const EdgeInsets.only(left:10.0),
//                        child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                          children: [
//                            Text('Departure Time'),
//                            SizedBox(height: 15),
//                       Text(terminals_hours['Bundibugyo Bus Terminal'][0]),
//                       Text(terminals_hours['Bundibugyo Bus Terminal'][1]),
//                      Text(terminals_hours['Bundibugyo Bus Terminal'][2]),
//                          ],
//                        ),
//                      ),
//                      Divider(height: 1,),
//                     SizedBox(height: 20,),

//                           InkWell(
//                             hoverColor: Colors.yellow,
//                        onTap: () {
//                           Navigator.of(context).pushNamed(busRouteScreen.routeName);
//                        },
//                             child: Card(
//                                                  shape: RoundedRectangleBorder(
//                                               borderRadius: BorderRadius.circular(0)),
//                                         elevation: 5.5,
//                                         child: Column(
//                                           children: [
//                                             ListTile(
//                                               leading: Image.asset(
//                                                 'image/bus.png',
//                                                 color: Colors.green,
//                                                 width: 20,
//                                                 height: 20,
//                                               ),
//                                               trailing: Icon(
//                                                 Icons.arrow_forward_ios_rounded,
//                                                 color: Colors.green,
//                                                 size: 20,
//                                               ),
//                                               title: Text(
//                                                 'Bwera Bus Terminal',
//                                                 style: TextStyle(fontSize: 20, color: Colors.black),
//                                               ),
                                             
//                                             ),
//                                                    ],
//                                                  ),
//                                                ),
//                           ),
//                      SizedBox(height: 20,),
//                      Padding(
//                        padding: const EdgeInsets.only(left:10.0),
//                        child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                          children: [
//                            Text('Departure Time'),
//                            SizedBox(height: 15),
//                       Text(terminals_hours['Bwera Bus Terminal'][0]),
//                       Text(terminals_hours['Bwera Bus Terminal'][1]),
//                      Text(terminals_hours['Bwera Bus Terminal'][2]),
//                      Text(terminals_hours['Bwera Bus Terminal'][3]),
//                      Text(terminals_hours['Bwera Bus Terminal'][4]),
//                          ],
//                        ),
//                      ),
//                      Divider(height: 1,),
//                     SizedBox(height: 20,),

//                           InkWell(
//                             hoverColor: Colors.yellow,
//                        onTap: () {
//                           Navigator.of(context).pushNamed(busRouteScreen.routeName);
//                        },
//                             child: Card(
//                                                  shape: RoundedRectangleBorder(
//                                               borderRadius: BorderRadius.circular(0)),
//                                         elevation: 5.5,
//                                         child: Column(
//                                           children: [
//                                             ListTile(
//                                               leading: Image.asset(
//                                                 'image/bus.png',
//                                                 color: Colors.green,
//                                                 width: 20,
//                                                 height: 20,
//                                               ),
//                                               trailing: Icon(
//                                                 Icons.arrow_forward_ios_rounded,
//                                                 color: Colors.green,
//                                                 size: 20,
//                                               ),
//                                               title: Text(
//                                                 'Mutukula Bus Terminal',
//                                                 style: TextStyle(fontSize: 20, color: Colors.black),
//                                               ),
                                             
//                                             ),
//                                                    ],
//                                                  ),
//                                                ),
//                           ),
//                      SizedBox(height: 20,),
//                      Padding(
//                        padding: const EdgeInsets.only(left:10.0),
//                        child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                          children: [
//                            Text('Departure Time'),
//                            SizedBox(height: 15),
//                       Text(terminals_hours['Mutukula Bus Terminal'][0]),
//                       Text(terminals_hours['Mutukula Bus Terminal'][1]),
//                          ],
//                        ),
//                      ),
//                      Divider(height: 1,),
//                     SizedBox(height: 20,),

//                           InkWell(
//                             hoverColor: Colors.yellow,
//                        onTap: () {
//                           Navigator.of(context).pushNamed(busRouteScreen.routeName);
//                        },
//                             child: Card(
//                                                  shape: RoundedRectangleBorder(
//                                               borderRadius: BorderRadius.circular(0)),
//                                         elevation: 5.5,
//                                         child: Column(
//                                           children: [
//                                             ListTile(
//                                               leading: Image.asset(
//                                                 'image/bus.png',
//                                                 color: Colors.green,
//                                                 width: 20,
//                                                 height: 20,
//                                               ),
//                                               trailing: Icon(
//                                                 Icons.arrow_forward_ios_rounded,
//                                                 color: Colors.green,
//                                                 size: 20,
//                                               ),
//                                               title: Text(
//                                                 'Kibaale Bus Terminal',
//                                                 style: TextStyle(fontSize: 20, color: Colors.black),
//                                               ),
                                             
//                                             ),
//                                                    ],
//                                                  ),
//                                                ),
//                           ),
//                      SizedBox(height: 20,),
//                      Padding(
//                        padding: const EdgeInsets.only(left:10.0),
//                        child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                          children: [
//                            Text('Departure Time'),
//                            SizedBox(height: 15),
//                       Text(terminals_hours['Kibaale Bus Terminal'][0]),
//                          ],
//                        ),
//                      ),
//                      Divider(height: 1,),
//                     SizedBox(height: 20,),

//                           InkWell(
//                             hoverColor: Colors.yellow,
//                        onTap: () {
//                           Navigator.of(context).pushNamed(busRouteScreen.routeName);
//                        },
//                             child: Card(
//                                                  shape: RoundedRectangleBorder(
//                                               borderRadius: BorderRadius.circular(0)),
//                                         elevation: 5.5,
//                                         child: Column(
//                                           children: [
//                                             ListTile(
//                                               leading: Image.asset(
//                                                 'image/bus.png',
//                                                 color: Colors.green,
//                                                 width: 20,
//                                                 height: 20,
//                                               ),
//                                               trailing: Icon(
//                                                 Icons.arrow_forward_ios_rounded,
//                                                 color: Colors.green,
//                                                 size: 20,
//                                               ),
//                                               title: Text(
//                                                 'Kaiso-Toonya Bus Terminal',
//                                                 style: TextStyle(fontSize: 20, color: Colors.black),
//                                               ),
                                             
//                                             ),
//                                                    ],
//                                                  ),
//                                                ),
//                           ),
//                      SizedBox(height: 20,),
//                      Padding(
//                        padding: const EdgeInsets.only(left:10.0),
//                        child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                          children: [
//                            Text('Departure Time'),
//                            SizedBox(height: 15),
//                       Text(terminals_hours['Kaiso-Toonya Bus Terminal'][0]),
//                       Text(terminals_hours['Kaiso-Toonya Bus Terminal'][1]),

//                          ],
//                        ),
//                      ),
//                      Divider(height: 1,),
//                     SizedBox(height: 20,),

//                           InkWell(
//                             hoverColor: Colors.yellow,
//                        onTap: () {
//                           Navigator.of(context).pushNamed(busRouteScreen.routeName);
//                        },
//                             child: Card(
//                                                  shape: RoundedRectangleBorder(
//                                               borderRadius: BorderRadius.circular(0)),
//                                         elevation: 5.5,
//                                         child: Column(
//                                           children: [
//                                             ListTile(
//                                               leading: Image.asset(
//                                                 'image/bus.png',
//                                                 color: Colors.green,
//                                                 width: 20,
//                                                 height: 20,
//                                               ),
//                                               trailing: Icon(
//                                                 Icons.arrow_forward_ios_rounded,
//                                                 color: Colors.green,
//                                                 size: 20,
//                                               ),
//                                               title: Text(
//                                                 'Masaka Bus Terminal',
//                                                 style: TextStyle(fontSize: 20, color: Colors.black),
//                                               ),
                                             
//                                             ),
//                                                    ],
//                                                  ),
//                                                ),
//                           ),
//                      SizedBox(height: 20,),
//                      Padding(
//                        padding: const EdgeInsets.only(left:10.0),
//                        child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                          children: [
//                            Text('Departure Time'),
//                            SizedBox(height: 15),
//                       Text(terminals_hours['Masaka Bus Terminal'][0]),
//                       Text(terminals_hours['Masaka Bus Terminal'][1]),
//                      Text(terminals_hours['Masaka Bus Terminal'][2]),
//                          ],
//                        ),
//                      ),
//                      Divider(height: 1,),
//                     SizedBox(height: 20,),

//                           InkWell(
                            
//                             hoverColor: Colors.yellow,
//                        onTap: () {
//                           Navigator.of(context).pushNamed(busRouteScreen.routeName);
//                        },
//                             child: Card(
//                                                  shape: RoundedRectangleBorder(
//                                               borderRadius: BorderRadius.circular(0)),
//                                         elevation: 5.5,
//                                         child: Column(
//                                           children: [
//                                             ListTile(
//                                               leading: Image.asset(
//                                                 'image/bus.png',
//                                                 color: Colors.green,
//                                                 width: 20,
//                                                 height: 20,
//                                               ),
//                                               trailing: Icon(
//                                                 Icons.arrow_forward_ios_rounded,
//                                                 color: Colors.green,
//                                                 size: 20,
//                                               ),
//                                               title: Text(
//                                                 'Kasese Bus Terminal',
//                                                 style: TextStyle(fontSize: 20, color: Colors.black),
//                                               ),
                                             
//                                             ),
//                                                    ],
//                                                  ),
//                                                ),
//                           ),
//                      SizedBox(height: 20,),
//                      Padding(
//                        padding: const EdgeInsets.only(left:10.0),
//                        child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                          children: [
//                            Text('Departure Time'),
//                            SizedBox(height: 15),
//                       Text(terminals_hours['Kasese Bus Terminal'][0]),
//                       Text(terminals_hours['Kasese Bus Terminal'][1]),
//                      Text(terminals_hours['Kasese Bus Terminal'][2]),
//                      Text(terminals_hours['Kasese Bus Terminal'][3]),
//                      Text(terminals_hours['Kasese Bus Terminal'][4]),
//                          ],
//                        ),
//                      ),
//                   ],
//                  )
//                ],
//           )
//     )
//     );
//   }
// }
