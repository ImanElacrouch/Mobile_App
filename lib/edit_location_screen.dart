import 'package:flutter/material.dart';

class EditLocationScreen extends StatefulWidget {
  final String initialLocation;

  EditLocationScreen({Key? key, required this.initialLocation}) : super(key: key);

  @override
  _EditLocationScreenState createState() => _EditLocationScreenState();
}

class _EditLocationScreenState extends State<EditLocationScreen> {
  late TextEditingController locationController;

  @override
  void initState() {
    super.initState();
    locationController = TextEditingController(text: widget.initialLocation);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Location'),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Your initial location: ${widget.initialLocation}',
                style: TextStyle(fontSize: 18),
              ),
              TextField(
                controller: locationController,
                decoration: InputDecoration(
                  labelText: 'Edit Location',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 12),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Implement saving logic here
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Location updated to: ${locationController.text}')),
                  );
                },
                child: Text('Save Location', style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




