/*import 'package:flutter/material.dart';
import 'order_detail_screen.dart'; // Import the next screen

class ExploreMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore Menu'),
        backgroundColor: Colors.brown,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          _buildMenuItem(context, 'Chicken Burger', '8€'),
          _buildMenuItem(context, 'Meat Burger', '12€'),
          _buildMenuItem(context, 'Tacos', '10€'),
          _buildMenuItem(context, 'Sandwich', '7€'),
          _buildMenuItem(context, 'Pizza', '20€'),
          _buildMenuItem(context, 'Fries', '6€'),
        ],
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, String name, String price) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => OrderDetailScreen()));
      },
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.fastfood, size: 50),
            Text(name),
            Text(price),
          ],
        ),
      ),
    );
  }
}*/
