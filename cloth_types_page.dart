import 'package:flutter/material.dart';
import 'details_page.dart'; // Ensure you import the DetailsPage

class ClothTypesPage extends StatelessWidget {
  final String category;
  final List<Map<String, dynamic>> items;

  ClothTypesPage({required this.category, required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(category)),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/clothtypes_background.jpg"),  // Background image
            fit: BoxFit.contain,
          ),
        ),
        child: ListView.builder(
          padding: EdgeInsets.all(16.0),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: ListTile(
                leading: Image.asset(
                  item['image'],
                  width: 100,  // Image width
                  height: 250,  // Image height
                  fit: BoxFit.contain,
                ),
                title: Text(
                  item['name'],
                  style: TextStyle(fontSize: 32, color: Colors.black),  // Increased font size
                ),
                subtitle: Text(
                  "₹${item['price']}",  // Display price in Indian Rupees
                  style: TextStyle(fontSize: 24, color: Colors.grey[700]),  // Adjusted subtitle font size
                ),
                onTap: () {
                  // Navigate to details page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsPage(item: item), // Navigate to DetailsPage
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
