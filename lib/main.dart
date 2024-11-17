import 'package:flutter/material.dart';
import 'onboarding_screen1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: OnboardingScreen1(),
    );
  }
}
