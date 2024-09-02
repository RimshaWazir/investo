import 'package:flutter/material.dart';

class WaveClipperBottom extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);

    // First curve
    var firstStart = Offset(size.width / 8, 300);
    var firstEnd = Offset(size.width / 2, 160);
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    // Second curve
    var secondStart = Offset(size.width * 3 / 4, 70);
    var secondEnd = Offset(size.width, 130);
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
