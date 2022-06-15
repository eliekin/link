import 'package:flutter/material.dart';
import 'package:project/data/data.dart';

class detailsScreen extends StatelessWidget {
  static const routeName = '/detailsScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                BusHorraire('Kampala Bus Terminal'),
                sizedBox(),
                CardDeparture('Kampala Bus Terminal'),
                sizedBox(),
                BusHorraire('Masindi Bus Terminal'),
                sizedBox(),
                CardDeparture('Masindi Bus Terminal'),
                sizedBox(),
                BusHorraire('Hoima Bus Terminal'),
                sizedBox(),
                CardDeparture('Hoima Bus Terminal'),
                sizedBox(),
                BusHorraire('Fort Portal Bus Terminal'),
                sizedBox(),
                CardDeparture('Fort Portal Bus Terminal'),
                sizedBox(),
                BusHorraire('Bundibugyo Bus Terminal'),
                sizedBox(),
                CardDeparture('Bundibugyo Bus Terminal'),
                sizedBox(),
                BusHorraire('Bwera Bus Terminal'),
                sizedBox(),
                CardDeparture('Bwera Bus Terminal'),
                sizedBox(),
                BusHorraire('Mutukula Bus Terminal'),
                sizedBox(),
                CardDeparture('Mutukula Bus Terminal'),
                sizedBox(),
                BusHorraire('Kibaale Bus Terminal'),
                sizedBox(),
                CardDeparture('Kibaale Bus Terminal'),
                sizedBox(),
                BusHorraire('Kaiso-Toonya Bus Terminal'),
                sizedBox(),
                CardDeparture('Kaiso-Toonya Bus Terminal'),
                sizedBox(),
                BusHorraire('Masaka Bus Terminal'),
                sizedBox(),
                CardDeparture('Masaka Bus Terminal'),
                sizedBox(),
                BusHorraire('Kasese Bus Terminal'),
                sizedBox(),
                CardDeparture('Kasese Bus Terminal')
              ],
            )));
  }

  Card CardDeparture(String busTerminal) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 2.5,
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 10, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Departure Time',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  fontFamily: 'Montserrat'
                ),
              ),
              sizedBox(),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: terminals_hours[busTerminal].length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        terminals_hours[busTerminal][index],
                        style: TextStyle(
                            fontSize: 15,
                            wordSpacing: 10,
                            fontWeight: FontWeight.w500,
                            color: Colors.green[700]),
                      ),
                    );
                  }),
            ],
          ),
        ));
  }

  SizedBox sizedBox() {
    return SizedBox(
      height: 15,
    );
  }

  Padding busTerminalHorraire(String bussTerminalHorraire) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(bussTerminalHorraire),
      ]),
    );
  }

  Card BusHorraire(String busTerminal) {

    
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
      elevation: 5.5,
      child: Column(
        children: [
          ListTile(
            leading: Image.asset(
              'image/bus.png',
              color: Colors.green,
              width: 20,
              height: 20,
            ),
            title: Text(
              busTerminal,
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                 fontFamily: 'Montserrat'),
            ),
          ),
        ],
      ),
    );
  }
}
