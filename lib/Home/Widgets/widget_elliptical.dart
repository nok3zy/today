import 'package:flutter/material.dart';

class EllipticalContainer extends StatelessWidget {
  final Color color;
  final double size;
  final int side;

  const EllipticalContainer(
      {super.key, required this.color, required this.size, required this.side});

  CircleSide getSide() {
    return side == 0 ? CircleSide.left : CircleSide.right;
  }

  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: HalfCircleClipper(side: getSide()),
        child: Container(
          color: color,
          width: size,
          height: size,
        ));
  }
}

enum CircleSide { left, right }

class HalfCircleClipper extends CustomClipper<Path> {
  final CircleSide side;

  const HalfCircleClipper({required this.side});

  @override
  Path getClip(Size size) {
    return side.toPath(size);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

extension ToPath on CircleSide {
  Path toPath(Size size) {
    final path = Path();
    late Offset offset;
    late bool clockwise;

    switch (this) {
      case CircleSide.left:
        path.moveTo(size.width, 0);
        offset = Offset(size.width, size.height);
        clockwise = false;
        break;
      case CircleSide.right:
        offset = Offset(0, size.height);
        clockwise = true;
        break;
    }
    path.arcToPoint(offset,
        radius: Radius.elliptical(size.width / 2, size.height / 2),
        clockwise: clockwise);
    path.close();

    return path;
  }
}
