import 'package:ecommerce/models/Shoe.dart';
import 'package:ecommerce/providers/CartProvider.dart';
import 'package:ecommerce/widgets/cart-tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void openRemoveConfirmation(Shoe i) {
    // const String productName = i;
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          surfaceTintColor: Colors.grey,
          title: const Text('Remove Item'),
          content: const SingleChildScrollView(
            child:
                Text('Are you sure you want to remove this item from cart ?'),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Delete'),
              onPressed: () {
                Navigator.of(context).pop();
                context.read<CartProvider>().removeItemFromCart(i);
              },
            ),
          ],
        );
      },
    );
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
            return CartTile(item: cartItem, onRemove: openRemoveConfirmation);
          },
        ),
      ),
    ]);
  }
}
