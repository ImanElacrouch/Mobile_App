import 'package:flutter/material.dart';
import 'track_order_screen.dart'; // Import the TrackOrderScreen

class SetLocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController locationController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Set Your Location'),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.location_on, size: 100, color: Colors.brown),
              SizedBox(height: 16),
              Text('Set your location', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              TextField(
                controller: locationController,
                decoration: InputDecoration(
                  hintText: 'Enter your location',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 12),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  String enteredLocation = locationController.text;
                  if (enteredLocation.isNotEmpty) {
                    // Navigate to TrackOrderScreen and pass the entered location
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => TrackOrderScreen(location: enteredLocation),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Please enter a location')),
                    );
                  }
                },
                child: Text('Suivant', style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
              ),
            ],
          ),
        ),
      ),
    );
  }
}






