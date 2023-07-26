import 'package:flutter/material.dart';
import 'dart:math' show pi;

import 'package:today/Home/widget_elliptical.dart';

class SpinCircle extends StatefulWidget {
  const SpinCircle({super.key});

  @override
  State<SpinCircle> createState() => _SpinCircleState();
}

extension on VoidCallback {
  Future<void> delayed(Duration duration) => Future.delayed(duration, this);
}

class _SpinCircleState extends State<SpinCircle>
    with SingleTickerProviderStateMixin {
  late AnimationController _counterClockwiseRoationController;
  late Animation<double> _counterClockwiseRoationAnimaiton;

  @override
  void initState() {
    super.initState();

    _counterClockwiseRoationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _counterClockwiseRoationAnimaiton = Tween<double>(begin: 0, end: -(pi / 2))
        .animate(CurvedAnimation(
            parent: _counterClockwiseRoationController,
            curve: Curves.bounceOut));
  }

  @override
  void dispose() {
    _counterClockwiseRoationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _counterClockwiseRoationController
      ..reset()
      ..forward.delayed(const Duration(seconds: 1));

    return AnimatedBuilder(
      animation: _counterClockwiseRoationController,
      builder: (context, child) {
        return Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()
            ..rotateZ(_counterClockwiseRoationAnimaiton.value),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              EllipticalContainer(color: Colors.yellow, size: 100, side: 0),
              EllipticalContainer(color: Colors.blue, size: 100, side: 1),
            ],
          ),
        );
      },
    );
  }
}
