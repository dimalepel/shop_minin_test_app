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
    if (_cartItems.indexWhere((item) => item.id == id) > -1) {
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

  void deleteItem(int id) {
    _cartItems.removeAt(_cartItems.indexWhere((item) => item.id == id));

    notifyListeners();
  }

  void updateItemsAddOne(int id) {
    print(id);
    int itemIndex = _cartItems.indexWhere((item) => item.id == id);

    _cartItems[itemIndex].qty += 1;

    notifyListeners();
  }

  void updateItemsSubOne(int id) {
    print(id);
    int itemIndex = _cartItems.indexWhere((item) => item.id == id);

    if (_cartItems[itemIndex].qty < 2) {
      deleteItem(id);
    } else {
      _cartItems[itemIndex].qty -= 1;
    }

    notifyListeners();
  }
}