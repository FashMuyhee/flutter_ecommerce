import 'package:ecommerce/models/Shoe.dart';
import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  List<Shoe> cart = [];

  void addItemToCart(Shoe shoe) {
    cart.add(shoe);
    notifyListeners();
  }

  bool isAdded(Shoe shoe) {
    return cart.contains(shoe);
  }

  void removeItemFromCart(Shoe shoe) {
    cart.remove(shoe);
    notifyListeners();
  }
}
