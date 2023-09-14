import 'package:shop_minin_test_app/models/product_category_model.dart';

import '../services/product_category_service.dart';

class ProductCategoryRepository {
  final productCategoryService = ProductCategoryService();

  Future<List<ProductCategory>?> getProductCategories() async {
    return await productCategoryService.getProductCategories();
  }
}