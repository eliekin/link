import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:project/widgets/bottom_sheet_details.dart';

class bottomsheet extends StatelessWidget {
  String? title;
  String? address;
  String? phoneNumber;
  String? businessStatus;
  String? rating;

  bottomsheet(this.title, this.address, this.businessStatus, this.rating,
      this.phoneNumber, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
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
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
         const SizedBox(
            height: 20,
          ),
          BottomSheetDetails(
            title: 'Address',
            value: '${address}',
          ),
          ConstVerticalHeight(),
          BottomSheetDetails(
            title: 'Phone Number',
            value: '${phoneNumber}',
          ),
          ConstVerticalHeight(),
          BottomSheetDetails(
            title: 'Opening Now',
            value: '${businessStatus}',
          ),
          ConstVerticalHeight(),
          BottomSheetDetails(
            title: 'Rating',
            value: '${rating}',
          ),
          ConstVerticalHeight(),
          ElevatedButton(
              style:const ButtonStyle(),
              onPressed: () async {
                launchUrl(Uri.parse('tel://$phoneNumber'));
              },
              child: const Text('Call'))
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
