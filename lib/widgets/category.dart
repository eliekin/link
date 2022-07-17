import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({
    Key? key,
    required this.text,
    required this.icon,
    required this.color,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black.withOpacity(0.7)),
      child: Row(
        children: [
          Icon(
            icon,
            color: color,
          ),
          Text(text, style: TextStyle(color: color)),
        ],
      ),
    );
  }
}
