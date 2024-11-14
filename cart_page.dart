// cart_page.dart
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  final Map<String, dynamic>? item;

  CartPage({this.item});

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final List<Map<String, dynamic>> cartItems = [];

  @override
  void initState() {
    super.initState();
    if (widget.item != null) {
      cartItems.add(widget.item!);
    }
  }

  // Calculate the total price of items in the cart
  double get totalPrice {
    return cartItems.fold(0, (sum, item) => sum + (item['price'] as double));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cart')),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/cart_background.jpg"),  // Background image for cart
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Items in Cart',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(16.0),
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  final item = cartItems[index];
                  return ListTile(
                    leading: Image.asset(
                      item['image'],
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                    title: Text(
                      item['name'],
                      style: TextStyle(fontSize: 24, color: Colors.black),
                    ),
                    subtitle: Text(
                      "₹${item['price']}",
                      style: TextStyle(fontSize: 20, color: Colors.grey[700]),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            // Display total price
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total:',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  Text(
                    "₹${totalPrice.toStringAsFixed(2)}",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Continue Shopping'),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
