import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Components/cart_item.dart';
import '../models/cart.dart';
import '../models/shoe.dart';  // Ensure you import the `Shoe` model

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // heading
            const Text(
              'My Cart',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(height: 30),

            Expanded(
              child: ListView.builder(
                itemCount: value.getUserCart().length, // Add itemCount to define the number of items
                itemBuilder: (context, index) {
                  Shoe individualShoe = value.getUserCart()[index];
                  return CartItem(shoe: individualShoe); // Pass the individualShoe to CartItem
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
