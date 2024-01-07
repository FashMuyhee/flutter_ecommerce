// import 'models/Shoe.dart';
import 'package:flutter/material.dart';

class ShoeTile extends StatelessWidget {
  // Shoe shoe;
  const ShoeTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 30),
      width: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 5,
            spreadRadius: 1,
            offset: const Offset(3, 2),
            blurStyle: BlurStyle.outer,
          ),
        ],
      ),
      child: Text('Yo'),
    );
  }
}
