import 'package:flutter/material.dart';
import 'payment_screen.dart';

class OrderDetailScreen extends StatefulWidget {
  final List<Map<String, String>> cartItems;

  const OrderDetailScreen({Key? key, required this.cartItems}) : super(key: key);

  @override
  _OrderDetailScreenState createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {
  void _removeItem(int index) {
    setState(() {
      widget.cartItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Details'),
        backgroundColor: Colors.brown,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.cartItems.length,
              itemBuilder: (context, index) {
                final item = widget.cartItems[index];
                return ListTile(
                  // Removed image and only showing text and price
                  title: Text(item["name"]!, style: TextStyle(fontSize: 18)),
                  subtitle: Text(item["price"]!, style: TextStyle(fontSize: 16)),
                  trailing: IconButton(
                    icon: Icon(Icons.delete, color: Colors.red),
                    onPressed: () => _removeItem(index),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PaymentScreen(cartItems: widget.cartItems),
                  ),
                );
              },
              child: Text('Suivant', style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
            ),
          ),
        ],
      ),
    );
  }
}





