import 'package:flutter/material.dart';
import 'order_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, String>> cartItems = []; // Liste pour stocker les produits ajoutés au panier
  int _selectedIndex = 0;

  void _onAddToCart(String name, String price) {
    setState(() {
      cartItems.add({"name": name, "price": price}); // Ajouter le produit au panier
    });
  }

  void _onBottomNavTapped(int index) {
    if (index == 1) {
      // Naviguer vers OrderDetailScreen lorsque l'icône du panier est cliquée
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OrderDetailScreen(cartItems: cartItems),
        ),
      );
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Trouvez votre plat préféré',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.brown),
            onPressed: () {
              // Ajouter une action pour les notifications si nécessaire
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Popular Menu',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  MenuItem(
                    name: 'Chicken Burger',
                    price: '8€',
                    imagePath: 'assets/images/chicken_burger.png',
                    onAddToCart: _onAddToCart,
                  ),
                  MenuItem(
                    name: 'Meat Burger',
                    price: '12€',
                    imagePath: 'assets/images/meat_burger.png',
                    onAddToCart: _onAddToCart,
                  ),
                  MenuItem(
                    name: 'Tacos',
                    price: '10€',
                    imagePath: 'assets/images/tacos.png',
                    onAddToCart: _onAddToCart,
                  ),
                  MenuItem(
                    name: 'Sandwich',
                    price: '6€',
                    imagePath: 'assets/images/sandwich.png',
                    onAddToCart: _onAddToCart,
                  ),
                  MenuItem(
                    name: 'Pizza',
                    price: '20€',
                    imagePath: 'assets/images/pizzaa.png',
                    onAddToCart: _onAddToCart,
                  ),
                  MenuItem(
                    name: 'Frites',
                    price: '2€',
                    imagePath: 'assets/images/fries.png',
                    onAddToCart: _onAddToCart,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.brown,
        unselectedItemColor: Colors.grey,
        onTap: _onBottomNavTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Profile'),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String name;
  final String price;
  final String imagePath;
  final Function(String, String) onAddToCart;

  MenuItem({required this.name, required this.price, required this.imagePath, required this.onAddToCart});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: Container(
              width: 120, // Largeur fixe
              height: 120, // Hauteur fixe
              child: Image.asset(
                imagePath,
                fit: BoxFit.contain, // Conserve les proportions de l'image
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            price,
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Flexible(
            child: ElevatedButton(
              onPressed: () {
                onAddToCart(name, price);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Text(
                'Ajouter au panier',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white, // Texte en blanc
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}

