import 'package:ecommerce/models/Shoe.dart';
import 'package:flutter/material.dart';

class CartTile extends StatelessWidget {
  final Shoe item;
  final void Function() onRemove;
  const CartTile({super.key, required this.item, required this.onRemove});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
      ),
      child: ListTile(
        leading: CircleAvatar(
            backgroundImage: AssetImage(item.imagePath), radius: 30,
            ),
        title: Text(
          item.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(item.price),
        // trailing: ,
      ),
    );
  }
}
