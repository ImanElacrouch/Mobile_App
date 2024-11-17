import 'package:flutter/material.dart';
import 'signin_screen.dart';

class OnboardingScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/pizza.png', height: 200),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'L\'endroit où se trouve votre nourriture réconfortante',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignInScreen()),
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
