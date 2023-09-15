import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_minin_test_app/repositories/cart_product_repository.dart';
import 'package:shop_minin_test_app/repositories/location_repository.dart';
import 'package:shop_minin_test_app/repositories/tag_repository.dart';
import 'package:shop_minin_test_app/widgets/food_app.dart';

void main() {
  runApp(
      MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => TagRepository()),
            ChangeNotifierProvider(create: (context) => LocationRepository()),
            ChangeNotifierProvider(create: (context) => CartProductRepository())
          ],
          child: const FoodApp(),
      ),
  );
}
