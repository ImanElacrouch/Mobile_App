import 'package:flutter/material.dart';
import 'signup_screen.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Se connecter',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Mot de passe'),
              obscureText: true,
            ),
            TextButton(
              onPressed: () {},
              child: Text('Mot de passe oublié?'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Se connecter', style: TextStyle(
              color: Colors.white, ),
          ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
            ),
            SizedBox(height: 20),
            Text('Vous n\'avez pas un compte?'),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpScreen()),
                );
              },
              child: Text('S\'inscrire'),
            ),
          ],
        ),
      ),
    );
  }
}
