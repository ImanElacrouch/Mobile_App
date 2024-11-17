import 'package:flutter/material.dart';
import 'signup_process_screen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _handleSignUp() {
    // Check if the user entered the specified name, email, and password
    if (_nameController.text == 'admin' &&
        _emailController.text == 'admin@admin.fr' &&
        _passwordController.text == 'admin') {
      // Navigate to the Sign-Up Process screen
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SignUpProcessScreen()),
      );
    } else {
      // Show an error message if the details are incorrect
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Incorrect details. Please follow the instructions.'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'S\'inscrire',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Please follow the instructions:\n'
              'For "Nom" enter "admin"\n'
              'For "Email" enter "admin@admin.fr"\n'
              'For "Mot de passe" enter "admin"',
              style: TextStyle(color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Nom'),
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Mot de passe'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _handleSignUp,
          
           child: Text('Créer un compte', style: TextStyle(
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
