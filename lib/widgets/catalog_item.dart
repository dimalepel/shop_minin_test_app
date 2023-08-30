import 'package:flutter/material.dart';
import 'package:shop_minin_test_app/widgets/product_detail.dart';

import '../models/product_model.dart';

class CatalogItem extends StatelessWidget {
  final Product product;

  const CatalogItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {
          showDialog(
              context: context,
              builder: (context) {
                return ProductDetail(product: product,);
              }
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  product.imageUrl,
                  fit: BoxFit.cover,
                  height: 109,
                  width: 109,
                ),
              ),
              color: Color(0xffF8F7F5),
            ),
            SizedBox(height: 5,),
            Text(
              product.name,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
              overflow: TextOverflow.clip,
            )
          ],
        ),
      ),
    );
  }
}
