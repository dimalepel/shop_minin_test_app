import 'package:flutter/material.dart';
import 'package:shop_minin_test_app/repositories/product_category_repository.dart';
import 'package:shop_minin_test_app/widgets/bottom_navigation.dart';
import 'package:shop_minin_test_app/widgets/custom_app_bar.dart';

import '../models/product_category_model.dart';
import '../widgets/category_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final productCategoryRepository = ProductCategoryRepository();
  late Future<List<ProductCategory>?> productCategoryFuture;

  @override
  void initState() {
    productCategoryFuture = productCategoryRepository.getProductCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.only(top: 8, right: 16, left: 16),
        child: FutureBuilder<List<ProductCategory>?>(
          future: productCategoryFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                  child: CircularProgressIndicator()
              );
            } else if (snapshot.hasError) {
              final error = snapshot.error;

              return Center(
                child: Text(
                  error.toString(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 20
                  ),
                ),
              );
            } else if (snapshot.hasData) {
              final productCategories = snapshot.data;

              return SingleChildScrollView(
                child: Column(
                  children: productCategories!.map((pc) => CategoryCard(category: pc,)).toList(),
                ),
              );
            } else {
              return const Text('Что-то пошло не так!');
            }
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigation(selectedIndex: 0,),
    );
  }
}
