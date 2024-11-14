// details_page.dart
import 'package:flutter/material.dart';
import 'cart_page.dart';  // Import CartPage

class DetailsPage extends StatelessWidget {
  final Map<String, dynamic> item;

  DetailsPage({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(item['name'])),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/detailspage_background.jpg"),  // Background image
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                item['image'],
                height: 280,  // Image height
                width: 280,   // Image width
                fit: BoxFit.contain,
              ),
              SizedBox(height: 20),
              Text(
                item['name'],
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(height: 10),
              Text(
                "\₹${item['price']}",
                style: TextStyle(fontSize: 24, color: Colors.grey[700]),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // Add item to cart and navigate to CartPage
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartPage(item: item),
                    ),
                  );
                },
                child: Text('Add to Cart'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
