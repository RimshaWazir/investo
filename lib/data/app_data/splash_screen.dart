import 'package:flutter/material.dart';
import 'package:investo_app/presentation/commons/investo_scaffold.dart';

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
