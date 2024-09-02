import 'package:flutter/material.dart';
import 'package:investo_app/data/datasource/custom_paint/wava_clipper_bottom.dart';
import 'package:investo_app/data/datasource/custom_paint/wave_clipper_top.dart';

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
                  color: const Color(0xff009773).withOpacity(0.4),
                  height: 230,
                ),
              ),
            ),
            ClipPath(
              clipper: WaveClipperTop(),
              child: Container(
                alignment: Alignment.center,
                color: const Color(0xff000000).withOpacity(0.3),
                height: 200,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipPath(
                clipper: WaveClipperBottom(),
                child: Container(
                  alignment: Alignment.center,
                  color: const Color(0xff000000).withOpacity(0.3),
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
                    color: const Color(0xff009773).withOpacity(0.4),
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
