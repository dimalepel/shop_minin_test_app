import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:shop_minin_test_app/repositories/cart_product_repository.dart';
import 'package:shop_minin_test_app/widgets/accent_button.dart';
import 'package:shop_minin_test_app/widgets/custom_app_bar.dart';

import '../models/cart_product_model.dart';
import '../widgets/cart_item.dart';
import '../widgets/bottom_navigation.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<CartProduct> cartItems = Provider.of<CartProductRepository>(context).cartItems;
    int totalAmount = Provider.of<CartProductRepository>(context).totalAmount;

    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SingleChildScrollView(
              child: ListView.builder(
                itemCount: cartItems.length,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (_, index) {
                  return CartItem(product: cartItems[index]);
                }
              ),
            ),
            AccentButton(label: 'Оплатить ${(NumberFormat().format(totalAmount)).toString().replaceAll(',', ' ')} ₽', onTap: () {}),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigation(selectedIndex: 2,),
    );
  }
}
