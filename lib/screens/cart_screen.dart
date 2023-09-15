import 'package:flutter/material.dart';
import 'package:shop_minin_test_app/widgets/accent_button.dart';
import 'package:shop_minin_test_app/widgets/custom_app_bar.dart';

import '../models/cart_product_model.dart';
import '../widgets/cart_item.dart';
import '../widgets/bottom_navigation.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<CartProduct> products = [
    CartProduct(
        id: 1,
        name: 'Рис с овощами',
        imageUrl: 'assets/images/product_1.png',
        price: 799,
        weight: 560,
        qty: 1
    ),
    CartProduct(
        id: 2,
        name: 'Салат по восточному',
        imageUrl: 'assets/images/product_2.png',
        price: 799,
        weight: 560,
        qty: 1
    ),
    CartProduct(
        id: 3,
        name: 'Рыба с овощами и рисом',
        imageUrl: 'assets/images/product_3.png',
        price: 799,
        weight: 560,
        qty: 1
    ),
  ];

  @override
  Widget build(BuildContext context) {
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
                itemCount: products.length,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (_, index) {
                  return CartItem(product: products[index]);
                }
              ),
            ),
            AccentButton(label: 'Оплатить 2 004 ₽', onTap: () {}),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigation(selectedIndex: 2,),
    );
  }
}
