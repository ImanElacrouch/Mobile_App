import 'package:flutter/material.dart';
import 'upload_photo_screen.dart'; // Import the UploadPhotoScreen

class SignUpProcessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.brown),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Remplissez votre bio pour commencer',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(labelText: 'Nom Complet'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Pays'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Numéro de téléphone'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the UploadPhotoScreen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UploadPhotoScreen()),
                );
              },
          child: Text('Suivant', style: TextStyle(
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
