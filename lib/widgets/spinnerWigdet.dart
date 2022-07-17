// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';


class loadingSpinner extends StatelessWidget {
  const loadingSpinner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               LoadingAnimationWidget.threeRotatingDots(
                    color: Colors.green, size: 80),
               const SizedBox(height: 15,),
                const Text('Loading...', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
              ],
            ),
          ),
        ),
      );
  }
}
