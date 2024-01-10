import 'package:ecommerce/models/Shoe.dart';
import 'package:flutter/material.dart';

class CartTile extends StatelessWidget {
  final Shoe item;
  final void Function(Shoe i) onRemove;
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
        leading: Image.asset(
          item.imagePath,
          fit: BoxFit.contain,
          width: 60,
        ),
        title: Text(
          item.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(item.price),
        trailing: IconButton(
          icon: const Icon(
            Icons.delete,
            color: Colors.red,
          ),
          color: Colors.green,
          onPressed: () => onRemove(item),
        ),
      ),
    );
  }
}
