import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_minin_test_app/repositories/cart_product_repository.dart';
import 'package:shop_minin_test_app/widgets/accent_button.dart';

import '../models/product_model.dart';
import '../theme/app_colors.dart';

class ProductDetail extends StatelessWidget {
  final Product product;

  const ProductDetail({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 16),
      contentPadding: const EdgeInsets.all(16),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              color: AppColors.grey,
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    height: 232,
                    child: Image.network(
                      product.imageUrl,
                      fit: BoxFit.contain,
                      height: 204,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                  Positioned(
                      right: 10,
                      top: 10,
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Center(
                              child: Icon(
                                  Icons.favorite_border,
                                  color: AppColors.black
                              ),
                            ),
                          ),
                          const SizedBox(width: 8,),
                          InkWell(
                            onTap: () => Navigator.of(context).pop(),
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: Center(
                                child: Icon(
                                    Icons.close,
                                    color: AppColors.black
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8,),
          Text(
            product.name,
            textAlign: TextAlign.start,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8,),
          Row(
            children: [
              Text(
                '${product.price.toString()} ₽',
                style: TextStyle(
                    fontSize: 14,
                    color: AppColors.black
                ),
              ),
              Text(
                '· ${product.weight}г',
                style: TextStyle(
                    fontSize: 14,
                    color: AppColors.black40
                ),
              ),
            ],
          ),
          const SizedBox(height: 8,),
          Text(
            product.description,
            style: TextStyle(
                fontSize: 14,
                color: AppColors.black65
            ),
          ),
          const SizedBox(height: 16,),
          AccentButton(
            label: 'Добавить в корзину',
            onTap: () {
              final snackBar = SnackBar(
                content: const Text('Товар добавлен в корзину!'),
                backgroundColor: AppColors.blue,
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              Provider.of<CartProductRepository>(context, listen: false).addItem(
                  product.id,
                  product.name,
                  product.imageUrl,
                  product.price,
                  product.weight,
                  1
              );
            },
          ),
        ],
      ),
    );
  }
}
