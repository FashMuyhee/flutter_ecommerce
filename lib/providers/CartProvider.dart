import 'package:ecommerce/models/Shoe.dart';
import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  List<Shoe> cart = [];

  void addItemToCart(Shoe shoe) {
    // if(cart.)
    cart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    cart.remove(shoe);
    notifyListeners();
  }
}
