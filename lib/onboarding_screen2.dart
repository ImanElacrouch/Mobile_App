import 'package:flutter/material.dart';
import 'onboarding_screen3.dart';

class OnboardingScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/burger.png', height: 200),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Suivez votre alimentation réconfortante ici',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OnboardingScreen3()),
              );
            },
          child: Text(
            'Suivant',
            style: TextStyle(
              color: Colors.white, // Makes the text white
            ),
          ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.brown,
            ),
          ),
        ],
      ),
    );
  }
}
