// cart.dart
List<Map<String, dynamic>> cartItems = [];

// Function to add an item to the cart
void addToCart(Map<String, dynamic> item) {
  cartItems.add(item);
}

// Function to remove an item from the cart by index
void removeFromCart(int index) {
  if (index >= 0 && index < cartItems.length) {
    cartItems.removeAt(index);
  }
}

// Function to clear the cart
void clearCart() {
  cartItems.clear();
}
