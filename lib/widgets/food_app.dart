import 'package:flutter/material.dart';
import 'package:shop_minin_test_app/screens/home_screen.dart';

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Доставка Еды',
      home: HomeScreen(),
    );
  }
}