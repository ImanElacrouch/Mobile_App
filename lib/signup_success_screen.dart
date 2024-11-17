import 'package:flutter/material.dart';
import 'home_screen.dart';

class SignupSuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check_circle, color: Colors.brown, size: 100),
            SizedBox(height: 20),
            Text(
              'Félicitations',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text('Votre profil est prêt à être utilisé'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
           child: Text('Faites votre commande', style: TextStyle(
              color: Colors.white, ),
          ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
            ),
          ],
        ),
      ),
    );
  }
}
