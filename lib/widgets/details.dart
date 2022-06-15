import 'package:flutter/material.dart';

class BottomSheetItem extends StatelessWidget {
   String title;
   String value;

  BottomSheetItem({
    required this.value,
    required this.title,
  });

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
        SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 2,
          child: Text(
            "${value}",
            style: style,
          ),
        ),
      ],
    );
  }
  
}