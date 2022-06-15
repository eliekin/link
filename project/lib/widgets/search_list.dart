import 'package:flutter/material.dart';

class searchList extends StatelessWidget {
  // const searchList({Key? key}) : super(key: key);

  TextEditingController? searchText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          
        },
        child: Container(
          child:  Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24),
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Color(0xfff5f8fd),
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: searchText,
                        decoration: InputDecoration(
                            hintText: 'Search', border: InputBorder.none),
                      ),
                    ),
                  ]),
          )
            ])
        )
    );
  }
}