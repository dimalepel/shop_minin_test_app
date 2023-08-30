import 'package:flutter/material.dart';
import 'package:shop_minin_test_app/widgets/accent_button.dart';

import '../models/product_model.dart';

class ProductDetail extends StatelessWidget {
  final Product product;

  const ProductDetail({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.all(16),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    height: 232,
                    child: Image.asset(
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
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Center(
                              child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.black
                              ),
                            ),
                          ),
                          SizedBox(width: 8,),
                          InkWell(
                            onTap: () => Navigator.of(context).pop(),
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: Center(
                                child: Icon(
                                    Icons.close,
                                    color: Colors.black
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                  ),
                ],
              ),
              color: Color(0xffF8F7F5),
            ),
          ),
          SizedBox(height: 8,),
          Text(
            product.name,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 8,),
          Row(
            children: [
              Text(
                '${product.price.toString()} ₽',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black
                ),
              ),
              Text(
                '· ${product.weight}г',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black.withOpacity(0.4)
                ),
              ),
            ],
          ),
          SizedBox(height: 8,),
          Text(
            product.description,
            style: TextStyle(
                fontSize: 14,
                color: Colors.black.withOpacity(0.65)
            ),
          ),
          SizedBox(height: 16,),
          AccentButton(label: 'Добавить в корзину', onTap: () {},),
        ],
      ),
    );
  }
}
