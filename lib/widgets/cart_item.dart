import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:shop_minin_test_app/models/cart_product_model.dart';
import 'package:shop_minin_test_app/repositories/cart_product_repository.dart';

import '../theme/app_colors.dart';

class CartItem extends StatelessWidget {
  final CartProduct product;

  const CartItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Container(
                    color: AppColors.grey,
                    child: Image.network(
                      product.imageUrl,
                      fit: BoxFit.contain,
                      height: 62,
                      width: 62,
                    ),
                  ),
                ),
                const SizedBox(width: 8,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: TextStyle(
                          fontFamily: 'San Francisco',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.black
                      ),
                    ),
                    const SizedBox(height: 4,),
                    Row(
                      children: [
                        Text(
                          '${product.price.toString()} \₽ ',
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
                  ],
                )
              ],
            ),
            Container(
              width: 100,
              decoration: BoxDecoration(
                color: AppColors.greyAlt,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(
                  vertical: 4,
                  horizontal: 6
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Provider.of<CartProductRepository>(context, listen: false).updateItemsSubOne(product.id),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/images/svgs/icon_minus.svg',
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                  Text(
                    '${product.qty.toString()}',
                    style: TextStyle(
                        fontFamily: 'San Francisco',
                        fontSize: 14,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  InkWell(
                    onTap: () => Provider.of<CartProductRepository>(context, listen: false).updateItemsAddOne(product.id),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/images/svgs/icon_plus.svg',
                        width: 24,
                        height: 24,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 16,),
      ],
    );
  }
}
