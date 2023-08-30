import 'package:flutter/material.dart';
import 'package:shop_minin_test_app/widgets/bottom_navigation.dart';
import 'package:shop_minin_test_app/widgets/custom_app_bar.dart';

import '../models/category_model.dart';
import '../widgets/category_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Category> categories = [
    Category(
        id: 1,
        name: 'Пекарни и кондитерское',
        imageUrl: 'assets/images/category_1.png'
    ),
    Category(
        id: 2,
        name: 'Фастфуд',
        imageUrl: 'assets/images/category_2.png'
    ),
    Category(
        id: 3,
        name: 'Азиатская кухня',
        imageUrl: 'assets/images/category_3.png'
    ),
    Category(
        id: 4,
        name: 'Супы',
        imageUrl: 'assets/images/category_4.png'
    ),
    Category(
        id: 1,
        name: 'Пекарни и кондитерское',
        imageUrl: 'assets/images/category_1.png'
    ),
    Category(
        id: 2,
        name: 'Фастфуд',
        imageUrl: 'assets/images/category_2.png'
    ),
    Category(
        id: 3,
        name: 'Азиатская кухня',
        imageUrl: 'assets/images/category_3.png'
    ),
    Category(
        id: 4,
        name: 'Супы',
        imageUrl: 'assets/images/category_4.png'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 8, right: 16, left: 16),
        child: ListView.builder(
            itemCount: categories.length,
            itemBuilder: (_, index) {
              return CategoryCard(category: categories[index],);
            }
        ),
      ),
      bottomNavigationBar: const BottomNavigation(selectedIndex: 0,),
    );
  }
}
