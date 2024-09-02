import 'package:flutter/material.dart';
import 'package:investo_app/data/datasource/resources/custom_paint/wava_clipper_bottom.dart';
import 'package:investo_app/data/datasource/resources/custom_paint/wave_clipper_top.dart';

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
