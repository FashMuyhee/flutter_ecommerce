import 'package:ecommerce/models/Shoe.dart';
import 'package:ecommerce/providers/CartProvider.dart';
import 'package:ecommerce/widgets/cart-tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  void onRemoveItem(){

  }
  
  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartProvider>().cart;

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Padding(
        padding: EdgeInsets.only(left: 20),
        child: Text(
          'My Cart',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      const SizedBox(height: 50),
      // cart list
      Expanded(
        child: ListView.builder(
          itemCount: cart.length,
          itemBuilder: (context, index) {
            Shoe cartItem = cart[index];
            return CartTile(item: cartItem, onRemove: () {});
          },
        ),
      ),
    ]);
  }
}
