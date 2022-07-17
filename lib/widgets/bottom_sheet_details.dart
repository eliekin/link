import 'package:flutter/material.dart';

class BottomSheetDetails extends StatelessWidget {
   String title;
   String value;

  BottomSheetDetails({Key? key, 
    required this.value,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(
      fontSize: 16,
    );
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            "$title :",
            style: style,
          ),
        ),
       const SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 2,
          child: Text(
            // ignore: unnecessary_string_interpolations
            "${value}",
            style: style,
          ),
        ),
      ],
    );
  }
  
}