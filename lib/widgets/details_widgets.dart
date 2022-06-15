import 'package:flutter/material.dart';
import 'package:project/provider/place_details.dart';
import 'package:url_launcher/url_launcher.dart';

import './details.dart';

class bottomsheet extends StatelessWidget {
  String? title;
  String? address;
  String? phone_number;
  String? business_status;
  String? rating;

  bottomsheet(this.title, this.address, this.business_status, this.rating,
      this.phone_number);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 10.0,
        right: 10,
        top: 20,
        bottom: 20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Text(
              title!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          BottomSheetItem(
            title: 'Address',
            value: '${address}',
          ),
          ConstVerticalHeight(),
          BottomSheetItem(
            title: 'Phone Number',
            value: '${phone_number}',
          ),
          ConstVerticalHeight(),
          BottomSheetItem(
            title: 'Opening Now',
            value: '${business_status}',
          ),
          ConstVerticalHeight(),
          BottomSheetItem(
            title: 'Rating',
            value: '${rating}',
          ),
          ConstVerticalHeight(),
          ElevatedButton(
              style: ButtonStyle(),
              onPressed: () async {
                launchUrl(Uri.parse('tel://$phone_number'));
              },
              child: Text('Call'))
        ],
      ),
    );
  }

  @override
  Widget ConstVerticalHeight() {
    return SizedBox(
      height: 10,
    );
  }
}
