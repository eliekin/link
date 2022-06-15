import 'package:flutter/material.dart';

class CategoriesTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      // decoration: BoxDecoration(color: Colors.black26),
      margin: EdgeInsets.only(left: 10),
      height: MediaQuery.of(context).size.height / 6,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView(
          scrollDirection: Axis.horizontal,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
          children: [
                     Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)),
                elevation: 5.5,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.hotel,color:Colors.green),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                       'Hotel',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold,color:Colors.green),
                      )
                    ])),

                     Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)),
                elevation: 5.5,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.restaurant,color:Colors.green),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Restaurant',
                        style: TextStyle(
                          color:Colors.green,
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ])),

                    Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)),
                elevation: 5.5,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.shopping_cart,color:Colors.green),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                       'Market',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold,color:Colors.green),
                      )
                    ])),

                     Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)),
                elevation: 5.5,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.garage,color:Colors.green),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Garage',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold,color:Colors.green),
                      )
                    ])),

                     Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)),
                elevation: 5.5,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.local_hospital,color:Colors.green),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Hospital',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold,color:Colors.green),
                      )
                    ])),

                     Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)),
                elevation: 5.5,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.wc,color:Colors.green),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Toilet',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold,color:Colors.green),
                      )
                    ])),                  
          ],
        ),
      ),
    );
  }
}
