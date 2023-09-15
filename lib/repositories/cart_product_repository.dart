import 'package:flutter/cupertino.dart';

import '../models/cart_product_model.dart';

class CartProductRepository extends ChangeNotifier {
  List<CartProduct> _cartItems = [];

  List<CartProduct> get cartItems => _cartItems;
  int get totalAmount {
    var total = 0;

    _cartItems.forEach((item) {
      total += item.price * item.qty;
    });

    return total;
  }
  
  void addItem(id, name, imageUrl, price, weight, qty) {
    if (_cartItems.contains((item) => item.id == id)) {
      int itemIndex = _cartItems.indexWhere((item) => item.id == id);

      _cartItems[itemIndex].qty += 1;
    } else {
      _cartItems.add(CartProduct(
          id: id,
          name: name,
          imageUrl: imageUrl,
          price: price,
          weight: weight,
          qty: qty)
      );
    }

    notifyListeners();
  }
}