import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_minin_test_app/repositories/product_repository.dart';
import 'package:shop_minin_test_app/repositories/tag_repository.dart';

import '../models/product_model.dart';
import '../widgets/basic_app_bar.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/catalog_item.dart';
import '../widgets/tag_item.dart';

class CategoryScreen extends StatefulWidget {
  final String categoryName;

  const CategoryScreen({super.key, required this.categoryName});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final productRepository = ProductRepository();
  late Future<List<Product>?> productFuture;
  int currentTagIndex = 0;

  @override
  void initState() {
    productFuture = productRepository.getProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(categoryName: widget.categoryName,),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: FutureBuilder<List<Product>?>(
          future: productFuture,
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
              final products = snapshot.data;
              final filteredProducts = snapshot.data!.where((p) => p.tags.contains(Provider.of<TagRepository>(context).filterTag)).toList();

              late Set<String> tagsSet = {};
              late List<String> tags = [];

              for (var p in products!) {
                List curTags = p.tags;

                for (var t in curTags) {
                  tagsSet.add(t);
                }
              }

              tags = tagsSet.toList();

              return SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: tags.length,
                          itemBuilder: (context, index) {
                            return TagItem(
                              tagName: tags[index],
                              index: index,
                              currentTagIndex: currentTagIndex,
                              onTap: () {
                                Provider.of<TagRepository>(context, listen: false).setFilterTag(tags[index]);
                                setState(() {
                                  currentTagIndex = index;
                                });
                              },
                            );
                          }
                      ),
                    ),
                    const SizedBox(height: 16,),
                    GridView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 14,
                        crossAxisSpacing: 8,
                        childAspectRatio: 1.0,
                        mainAxisExtent: 162,
                      ),
                      itemCount: filteredProducts.length,
                      itemBuilder: (_, index) {
                        return CatalogItem(product: filteredProducts[index],);
                      },
                    )
                  ],
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
