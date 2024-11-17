import 'package:flutter/material.dart';

class TrackOrderScreen extends StatelessWidget {
  final String location;

  const TrackOrderScreen({Key? key, required this.location}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Track Order'),
        backgroundColor: Colors.brown,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text('Order ID: 456482064'),
              subtitle: Text('Aujourd\'hui'),
            ),
            ListTile(
              title: Text('Status'),
              subtitle: Text('Confirmé -> En route -> Livré'),
            ),
            ListTile(
              title: Text('Adresse de livraison'),
              subtitle: Text(location),
            ),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Appeler le support')),
                  );
                },
                child: Text('Contact Support', style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



