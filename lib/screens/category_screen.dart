import 'package:flutter/material.dart';
import 'package:shop_minin_test_app/repositories/product_repository.dart';

import '../models/product_model.dart';
import '../widgets/basic_app_bar.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/catalog_item.dart';
import '../widgets/tag.dart';

class CategoryScreen extends StatefulWidget {
  final String categoryName;

  const CategoryScreen({super.key, required this.categoryName});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final productRepository = ProductRepository();
  late Future<List<Product>?> productFuture;


  @override
  void initState() {
    productFuture = productRepository.getProducts();
    super.initState();
  }

  // final List<Product> products = [
  //   Product(
  //     id: 1,
  //     name: 'Рис с овощами',
  //     imageUrl: 'assets/images/product_1.png',
  //     price: 799,
  //     weight: 560,
  //     description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой',
  //     tags: ['Все меню', 'С рисом', 'Салаты']
  //   ),
  //   Product(
  //     id: 2,
  //     name: 'Салат по восточному',
  //     imageUrl: 'assets/images/product_2.png',
  //     price: 799,
  //     weight: 560,
  //     description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой',
  //     tags: ['Все меню', 'Салаты']
  //   ),
  //   Product(
  //     id: 3,
  //     name: 'Рыба с овощами и рисом',
  //     imageUrl: 'assets/images/product_3.png',
  //     price: 799,
  //     weight: 560,
  //     description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой',
  //     tags: ['Все меню', 'С рисом', 'С рыбой']
  //   ),
  //   Product(
  //     id: 4,
  //     name: 'Тортеллини',
  //     imageUrl: 'assets/images/product_4.png',
  //     price: 799,
  //     weight: 560,
  //     description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой',
  //     tags: ['Все меню', 'С рисом', 'С рыбой']
  //   ),
  //   Product(
  //     id: 5,
  //     name: 'Зеленый салат',
  //     imageUrl: 'assets/images/product_5.png',
  //     price: 390,
  //     weight: 420,
  //     description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой',
  //     tags: ['Все меню', 'Салаты']
  //   ),
  //   Product(
  //     id: 6,
  //     name: 'Рулеты из ветчины',
  //     imageUrl: 'assets/images/product_6.png',
  //     price: 815,
  //     weight: 380,
  //     description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой',
  //     tags: ['Все меню', 'С рисом', 'Салаты']
  //   ),
  //   Product(
  //     id: 7,
  //     name: 'Рис с овощами',
  //     imageUrl: 'assets/images/product_1.png',
  //     price: 799,
  //     weight: 560,
  //     description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой',
  //     tags: ['Все меню', 'С рисом', 'Салаты']
  //   ),
  //   Product(
  //     id: 8,
  //     name: 'Салат по восточному',
  //     imageUrl: 'assets/images/product_2.png',
  //     price: 799,
  //     weight: 560,
  //     description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой',
  //     tags: ['Все меню', 'С рисом', 'Салаты']
  //   ),
  //   Product(
  //     id: 9,
  //     name: 'Рыба с овощами и рисом',
  //     imageUrl: 'assets/images/product_3.png',
  //     price: 799,
  //     weight: 560,
  //     description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой',
  //     tags: ['Все меню', 'С рисом', 'Салаты']
  //   ),
  //   Product(
  //     id: 10,
  //     name: 'Тортеллини',
  //     imageUrl: 'assets/images/product_4.png',
  //     price: 799,
  //     weight: 560,
  //     description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой',
  //     tags: ['Все меню', 'С рисом', 'Салаты'],
  //   ),
  //   Product(
  //     id: 11,
  //     name: 'Зеленый салат',
  //     imageUrl: 'assets/images/product_5.png',
  //     price: 390,
  //     weight: 420,
  //     description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой',
  //     tags: ['Все меню', 'С рисом', 'Салаты']
  //   ),
  //   Product(
  //     id: 12,
  //     name: 'Рулеты из ветчины',
  //     imageUrl: 'assets/images/product_6.png',
  //     price: 815,
  //     weight: 380,
  //     description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой',
  //     tags: ['Все меню', 'С рисом', 'Салаты']
  //   ),
  //   Product(
  //     id: 13,
  //     name: 'Рис с овощами',
  //     imageUrl: 'assets/images/product_1.png',
  //     price: 799,
  //     weight: 560,
  //     description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой',
  //     tags: ['Все меню', 'С рисом', 'Салаты']
  //   ),
  //   Product(
  //     id: 14,
  //     name: 'Салат по восточному',
  //     imageUrl: 'assets/images/product_2.png',
  //     price: 799,
  //     weight: 560,
  //     description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой',
  //     tags: ['Все меню', 'С рисом', 'Салаты']
  //   ),
  //   Product(
  //     id: 15,
  //     name: 'Рыба с овощами и рисом',
  //     imageUrl: 'assets/images/product_3.png',
  //     price: 799,
  //     weight: 560,
  //     description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой',
  //     tags: ['Все меню', 'С рисом', 'Салаты']
  //   ),
  //   Product(
  //     id: 16,
  //     name: 'Тортеллини',
  //     imageUrl: 'assets/images/product_4.png',
  //     price: 799,
  //     weight: 560,
  //     description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой',
  //     tags: ['Все меню', 'С рисом', 'Салаты']
  //   ),
  //   Product(
  //     id: 17,
  //     name: 'Зеленый салат',
  //     imageUrl: 'assets/images/product_5.png',
  //     price: 390,
  //     weight: 420,
  //     description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой',
  //     tags: ['Все меню', 'С рисом', 'Салаты']
  //   ),
  //   Product(
  //     id: 18,
  //     name: 'Рулеты из ветчины',
  //     imageUrl: 'assets/images/product_6.png',
  //     price: 815,
  //     weight: 380,
  //     description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой',
  //     tags: ['Все меню', 'С рисом', 'Салаты']
  //   ),
  //   Product(
  //     id: 19,
  //     name: 'Рис с овощами',
  //     imageUrl: 'assets/images/product_1.png',
  //     price: 799,
  //     weight: 560,
  //     description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой',
  //     tags: ['Все меню', 'С рисом', 'Салаты']
  //   ),
  //   Product(
  //     id: 20,
  //     name: 'Салат по восточному',
  //     imageUrl: 'assets/images/product_2.png',
  //     price: 799,
  //     weight: 560,
  //     description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой',
  //     tags: ['Все меню', 'С рисом', 'Салаты']
  //   ),
  //   Product(
  //     id: 21,
  //     name: 'Рыба с овощами и рисом',
  //     imageUrl: 'assets/images/product_3.png',
  //     price: 799,
  //     weight: 560,
  //     description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой',
  //     tags: ['Все меню', 'С рисом', 'Салаты']
  //   ),
  //   Product(
  //     id: 22,
  //     name: 'Тортеллини',
  //     imageUrl: 'assets/images/product_4.png',
  //     price: 799,
  //     weight: 560,
  //     description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой',
  //     tags: ['Все меню', 'С рисом', 'Салаты']
  //   ),
  //   Product(
  //     id: 23,
  //     name: 'Зеленый салат',
  //     imageUrl: 'assets/images/product_5.png',
  //     price: 390,
  //     weight: 420,
  //     description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой',
  //     tags: ['Все меню', 'С зеленью', 'Салаты']
  //   ),
  //   Product(
  //     id: 24,
  //     name: 'Рулеты из ветчины',
  //     imageUrl: 'assets/images/product_6.png',
  //     price: 815,
  //     weight: 380,
  //     description: 'Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой',
  //     tags: ['Все меню', 'С мясом', 'Салаты']
  //   ),
  // ];
  //
  //  Set<String> tagsSet = {};
  //  List<String> tags = [];
  //
  //  @override
  //  void initState() {
  //    for (var p in products) {
  //      List<String> curTags = p.tags;
  //
  //      for (var t in curTags) {
  //        tagsSet.add(t);
  //      }
  //    }
  //
  //    tags = tagsSet.toList();
  //    productFuture = productRepository.getProducts();
  //
  //    super.initState();
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: BasicAppBar(categoryName: widget.categoryName,),
  //     body: SingleChildScrollView(
  //       child: Padding(
  //         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  //         child: Column(
  //           children: [
  //             SizedBox(
  //               height: 50,
  //               child: ListView.builder(
  //                   shrinkWrap: true,
  //                   scrollDirection: Axis.horizontal,
  //                   itemCount: tags.length,
  //                   itemBuilder: (context, index) {
  //                     return Tag(tagName: tags[index], index: index,);
  //                   }
  //               ),
  //             ),
  //             const SizedBox(height: 16,),
  //             GridView.builder(
  //               shrinkWrap: true,
  //               physics: const NeverScrollableScrollPhysics(),
  //               scrollDirection: Axis.vertical,
  //               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
  //                 crossAxisCount: 3,
  //                 mainAxisSpacing: 14,
  //                 crossAxisSpacing: 8,
  //                 childAspectRatio: 1.0,
  //                 mainAxisExtent: 146,
  //               ),
  //               itemCount: products.length,
  //               itemBuilder: (_, index) {
  //                 return CatalogItem(product: products[index],);
  //               },
  //             )
  //           ],
  //         ),
  //       ),
  //     ),
  //     bottomNavigationBar: const BottomNavigation(selectedIndex: 0,),
  //   );
  // }

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
                            return Tag(tagName: tags[index], index: index,);
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
                      itemCount: products.length,
                      itemBuilder: (_, index) {
                        return CatalogItem(product: products[index],);
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
