import 'package:ecommerce/models/Shoe.dart';
import 'package:ecommerce/providers/CartProvider.dart';
import 'package:ecommerce/widgets/shoe-tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  final List<Shoe> shoes = [
    Shoe(
        name: "Air Max 270",
        description:
            "Cushioned comfort meets bold style in the Nike Air Max 270. Featuring a large Air unit for all-day comfort and a sleek, modern design.",
        price: '150',
        imagePath: 'assets/images/shoes_1.png'),
    Shoe(
        name: "Stan Smith",
        description:
            "A timeless classic, the adidas Stan Smith is a must-have for any sneaker collection. Featuring a minimalist design and a comfortable fit.",
        price: '80',
        imagePath: 'assets/images/shoes_2.png'),
    Shoe(
        name: "Chuck Taylor All Star",
        description:
            "The iconic Converse Chuck Taylor All Star is a true legend. With its timeless design and durable construction, it's no wonder it's been a favorite for generations.",
        price: '60',
        imagePath: 'assets/images/shoes_3.png'),
    Shoe(
        name: "Ultraboost 22",
        description:
            "Experience ultimate energy return with the adidas Ultraboost 22. Featuring a responsive Boost midsole and a comfortable Primeknit upper, this shoe is designed for runners of all levels.",
        price: '180',
        imagePath: 'assets/images/shoes_4.png'),
  ];

  void onAddToCart(Shoe shoe) {
    context.read<CartProvider>().addItemToCart(shoe);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: const Text(
          'Shoe Added Successfully',
        ),
        backgroundColor: Colors.tealAccent.shade400));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // search bar
        Container(
          height: 55,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          margin:
              const EdgeInsets.only(bottom: 30, left: 20, right: 20, top: 20),
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Search ...',
                style: TextStyle(fontSize: 17, color: Colors.grey.shade600),
              ),
              Icon(
                Icons.search_rounded,
                color: Colors.grey.shade600,
                size: 20,
              )
            ],
          ),
        ),
        // message
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Hot Picks 🔥',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                'See all',
                style: TextStyle(fontSize: 20, color: Colors.blue.shade800),
              )
            ],
          ),
        ),
        // product list
        Expanded(
          child: ListView.builder(
            itemCount: shoes.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              Shoe shoe = shoes[index];
              return ShoeTile(
                shoe: shoe,
                onAdd: onAddToCart,
              );
            },
          ),
        ),
        const SizedBox(
          height: 70,
        )
      ],
    );
  }
}
