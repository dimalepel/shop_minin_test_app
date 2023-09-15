import 'package:shop_minin_test_app/services/product_service.dart';

import '../models/product_model.dart';

class ProductRepository {
  final productService = ProductService();

  Future<List<Product>?> getProducts() async {
    return await productService.getProducts();
  }
}