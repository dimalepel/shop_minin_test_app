import 'package:flutter/material.dart';

import '../models/product_category_model.dart';
import '../screens/category_screen.dart';
import '../theme/app_colors.dart';

class CategoryCard extends StatelessWidget {
  final ProductCategory category;

  const CategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryScreen(categoryName: category.name,))),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                category.imageUrl,
                fit: BoxFit.cover,
                height: 148,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Positioned(
                left: 16,
                top: 12,
                child: SizedBox(
                  width: 190,
                  child: Text(
                    category.name,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'San Francisco',
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                    ),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
