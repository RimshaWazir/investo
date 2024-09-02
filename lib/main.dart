import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Investo App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const InvestoScaffold(
      child: Center(
        child: Text(
          'Investo App',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}

class InvestoScaffold extends StatelessWidget {
  final Widget child;
  const InvestoScaffold({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Opacity(
              opacity: 0.5,
              child: ClipPath(
                clipper: WaveClipperTop(),
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.lightGreen.withOpacity(0.4),
                  height: 230,
                ),
              ),
            ),
            ClipPath(
              clipper: WaveClipperTop(),
              child: Container(
                alignment: Alignment.center,
                color: Colors.lightGreen,
                height: 200,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipPath(
                clipper: WaveClipperBottom(),
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.lightGreen,
                  height: 200,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Opacity(
                opacity: 0.5,
                child: ClipPath(
                  clipper: WaveClipperBottom(),
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.lightGreen.withOpacity(0.4),
                    height: 230,
                  ),
                ),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}

class WaveClipperTop extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    var firstStart = Offset(size.width / 4, size.height - 200);
    var firstEnd = Offset(size.width / 2, size.height - 150);
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart = Offset(size.width * 3 / 4, size.height - 80);
    var secondEnd = Offset(size.width, size.height - 140);
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

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
