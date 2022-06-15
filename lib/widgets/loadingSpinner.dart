import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project/screens/tabs_screen.dart';
import 'package:project/widgets/activeMap.dart';

class LoaderSpinner extends StatefulWidget {
  const LoaderSpinner({Key? key}) : super(key: key);

  @override
  State<LoaderSpinner> createState() => _LoaderSpinnerState();
}

class _LoaderSpinnerState extends State<LoaderSpinner>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation_rotation;
  late Animation<double> animation_radius_in;
  late Animation<double> animation_radius_out;

  bool isLoading = false;

  final double initialRadius = 30;
  double radius = 0.0;

  @override
  void initState() {
    // TODO: implement initState
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    animation_radius_in = Tween<double>(
      begin: 1.0,
      end: 0.0,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(0.75, 1.0, curve: Curves.elasticIn),
      ),
    );
    animation_radius_out = Tween<double>(
      begin: 0.0,
      end: 1,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(0.0, 0.25, curve: Curves.elasticOut),
      ),
    );
    animation_rotation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(0.0, 1, curve: Curves.linear),
      ),
    );
    controller.addListener(() {
      setState(() {
        if (controller.value >= 0.75 && controller.value <= 1) {
          radius = animation_radius_in.value * initialRadius;
        } else if (controller.value >= 0.0 && controller.value <= 0.25) {
          radius = animation_radius_out.value * initialRadius;
        }
      });
    });
    controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RotationTransition(
                    turns: animation_rotation,
                    child: Stack(
                      children:  [
                         Transform.translate(
                          offset: Offset(
                            0 * cos(pi / 4),
                            0 * sin(pi / 4),
                          ),
                          child: Dot(color: Colors.green, radius: 10),
                        ),
                        Transform.translate(
                          offset: Offset(
                            radius * cos(pi / 4),
                            radius * sin(pi / 4),
                          ),
                          child: Dot(color: Colors.redAccent, radius: 5),
                        ),
                        Transform.translate(
                          offset: Offset(
                            radius * cos(2 * pi / 4),
                            radius * sin(2 * pi / 4),
                          ),
                          child: Dot(color: Colors.blue, radius: 5),
                        ),
                        Transform.translate(
                          offset: Offset(
                            radius * cos(3 * pi / 4),
                            radius * sin(3 * pi / 4),
                          ),
                          child: Dot(color: Colors.yellow, radius: 5),
                        ),
                        Transform.translate(
                          offset: Offset(
                            radius * cos(4 * pi / 4),
                            radius * sin(4 * pi / 4),
                          ),
                          child: Dot(color: Colors.green, radius: 5),
                        ),
                        Transform.translate(
                          offset: Offset(
                            radius * cos(5 * pi / 4),
                            radius * sin(5 * pi / 4),
                          ),
                          child: Dot(color: Colors.pink, radius: 5),
                        ),
                        Transform.translate(
                          offset: Offset(
                            radius * cos(6 * pi / 4),
                            radius * sin(6 * pi / 4),
                          ),
                          child: Dot(color: Colors.purple, radius: 5),
                        ),
                        Transform.translate(
                          offset: Offset(
                            radius * cos(7 * pi / 4),
                            radius * sin(7 * pi / 4),
                          ),
                          child: Dot(color: Colors.orange, radius: 5),
                        ),
                        Transform.translate(
                          offset: Offset(
                            radius * cos(8 * pi / 4),
                            radius * sin(8 * pi / 4),
                          ),
                          child: Dot(color: Colors.cyan, radius: 5),
                        ),
                      ],
                    ),
                  ),
                 const SizedBox(width: 35,),
                  const Text('Link', style: TextStyle(fontSize: 50, color: Colors.green, fontWeight: FontWeight.w800, fontFamily: 'Quicksand'),),
                ],
              ),
             const SizedBox(height: 20,),
             const Text('Loading,please wait a moment...',style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),
        ),
      ),
    );
  }
}

class Dot extends StatelessWidget {
  final double radius;
  final Color color;

  Dot({required this.color, required this.radius});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: this.radius,
        height: this.radius,
        decoration: BoxDecoration(
          color: this.color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
