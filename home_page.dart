import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'cloth_types_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cloth Store"),backgroundColor: CupertinoColors.systemGrey5,),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/home_background.jpg"),  // Background image for the home page
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.all(16.0),  // Add padding around the list
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),  // Vertical padding for each ListTile
              child: ListTile(
                leading: Image.asset(
                  'assets/mens_tshirt.jpg',
                  width: 120,  // Adjust the width of the image
                  height: 120,  // Adjust the height of the image
                  fit: BoxFit.contain,  // Make sure the image fills the space
                ),
                title: Text(
                  "Men's Wear",
                  style: TextStyle(fontSize: 28, color: Colors.black),  // Adjust font size and color
                ),
                onTap: () {
                  // Navigate to Men's Wear items
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ClothTypesPage(
                            category: "Men's Wear", items: mensWearItems)),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),  // Add space between tiles
              child: ListTile(
                leading: Image.asset(
                  'assets/womens_tshirt.jpg',
                  width: 120,  // Adjust the width of the image
                  height: 120,  // Adjust the height of the image
                  fit: BoxFit.contain,  // Make sure the image fills the space
                ),
                title: Text(
                  "Women's Wear",
                  style: TextStyle(fontSize: 28, color: Colors.black),  // Adjust font size and color
                ),
                onTap: () {
                  // Navigate to Women's Wear items
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ClothTypesPage(
                            category: "Women's Wear", items: womensWearItems)),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),  // Add space between tiles
              child: ListTile(
                leading: Image.asset(
                  'assets/kids_tshirt.jpg',
                  width: 120,  // Adjust the width of the image
                  height: 220,  // Adjust the height of the image
                  fit: BoxFit.contain,  // Make sure the image fills the space
                ),
                title: Text(
                  "Kids' Wear",
                  style: TextStyle(fontSize: 28, color: Colors.black),  // Adjust font size and color
                ),
                onTap: () {
                  // Navigate to Kids' Wear items
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ClothTypesPage(
                            category: "Kids' Wear", items: kidsWearItems)),
                  );

                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final List<Map<String, dynamic>> mensWearItems = [
  {"name": "Men's T-shirt", "price": 1500.0, "image": "assets/mens_tshirt.jpg"},
  {"name": "Men's Jeans", "price": 2000.0, "image": "assets/mens_jeans.jpg"},
  {"name": "Men's Jacket", "price": 1800.0, "image": "assets/mens_jacket.jpg"}, // New item
  {"name": "Men's Sherwani", "price": 9000.0, "image": "assets/mens_sherwani.jpg"},  // New item
  {"name": "Men's Hoodie", "price": 3500.0, "image": "assets/mens_hoodie.jpg"},  // New item
  {"name": "Men's Formal", "price": 1500.0, "image": "assets/mens_formal.jpg"} // New item
];


final List<Map<String, dynamic>> womensWearItems = [
  {"name": "Women's T-shirt", "price": 900.0, "image": "assets/womens_tshirt.jpg"},
  {"name": "Women's Jeans", "price": 1450.0, "image": "assets/womens_jeans.jpg"},
  {"name": "Women's Dress", "price": 1120.0, "image": "assets/womens_dress.jpg"},
  {"name": "Women's Skirt", "price": 890.0, "image": "assets/womens_skirt.jpg"},
  {"name": "Women's Saree", "price": 5500.0, "image": "assets/womens_saree.jpg"},
  {"name": "Women's Blouse", "price": 750.0, "image": "assets/womens_blouse.jpg"}
];


final List<Map<String, dynamic>> kidsWearItems = [
  {"name": "Kids' T-shirt", "price": 650.0, "image": "assets/kids_tshirt.jpg"},
  {"name": "Kids' Jeans", "price": 900.0, "image": "assets/kids_jeans.jpg"},
  {"name": "Kids' Shorts", "price": 450.0, "image": "assets/kids_shorts.jpg"},
  {"name": "Kids' Dress", "price": 1800.0, "image": "assets/kids_dress.jpg"}
];
