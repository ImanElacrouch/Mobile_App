/*import 'package:flutter/material.dart';
import 'explore_menu_screen.dart';

class FilterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trouvez votre plat préféré'),
        backgroundColor: Colors.brown,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButtonFormField(
              items: ['Type', 'Burger', 'Pizza', 'Dessert'].map((String value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
              decoration: InputDecoration(labelText: 'Type'),
            ),
            DropdownButtonFormField(
              items: ['Location', 'Paris', 'Lyon', 'Marseille'].map((String value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
              decoration: InputDecoration(labelText: 'Localisation'),
            ),
            DropdownButtonFormField(
              items: ['Food', 'Cake', 'Soup', 'Dessert'].map((String value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
              decoration: InputDecoration(labelText: 'Nourriture'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement search functionality if needed
              },
              child: Text('Search'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
            ),
            SizedBox(height: 10), // Spacing between buttons
            ElevatedButton(
              onPressed: () {
                // Navigate to the Explore Menu screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExploreMenuScreen()),
                );
              },
              child: Text('Suivant'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
            ),
          ],
        ),
      ),
    );
  }
}*/
