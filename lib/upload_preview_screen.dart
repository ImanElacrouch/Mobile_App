import 'package:flutter/material.dart';
import 'dart:io';
import 'set_location_screen.dart';

class UploadPreviewScreen extends StatelessWidget {
  final File image;

  UploadPreviewScreen({required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Aperçu de votre photo de profil',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red),
                borderRadius: BorderRadius.circular(8.0),
              ),
              // ignore: unnecessary_null_comparison
              child: image != null
                  ? Image.file(
                      image,
                      fit: BoxFit.cover,
                    )
                  : Center(
                      child: Icon(Icons.account_circle, size: 100, color: Colors.grey),
                    ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SetLocationScreen()),
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

