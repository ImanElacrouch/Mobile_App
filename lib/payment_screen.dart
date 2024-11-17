import 'package:flutter/material.dart';
import 'set_location_screen1.dart';

class PaymentScreen extends StatefulWidget {
  final List<Map<String, String>> cartItems;

  const PaymentScreen({Key? key, required this.cartItems}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String selectedPaymentMethod = 'PayPal';

  double calculateTotalPrice() {
    return widget.cartItems.fold(0, (total, item) {
      double price = double.tryParse(item['price']!.replaceAll('€', '').trim()) ?? 0.0;
      return total + price;
    });
  }

  @override
  Widget build(BuildContext context) {
    double totalPrice = calculateTotalPrice();

    return Scaffold(
      appBar: AppBar(
        title: Text('Confirm Order'),
        backgroundColor: Colors.brown,
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Payment Method'),
            trailing: DropdownButton<String>(
              value: selectedPaymentMethod,
              items: ['PayPal', 'Visa'].map((method) {
                return DropdownMenuItem<String>(
                  value: method,
                  child: Text(method),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedPaymentMethod = value!;
                });
              },
            ),
          ),
          ListTile(
            title: Text('Total'),
            trailing: Text('${totalPrice.toStringAsFixed(2)}€'),
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => SetLocationScreen()));
            },
          child: Text('Passer une commande', style: TextStyle(
              color: Colors.white, ),
          ),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
          ),
        ],
      ),
    );
  }
}


