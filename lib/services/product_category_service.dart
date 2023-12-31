import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import '../failure.dart';
import '../models/product_category_model.dart';

class ProductCategoryService {
  Future<List<ProductCategory>?> getProductCategories() async {
    try {
      final response = await http.get(Uri.parse('https://run.mocky.io/v3/058729bd-1402-4578-88de-265481fd7d54'));

      var json = jsonDecode(response.body);
      List<ProductCategory> categories = ProductCategoryResponse.fromJson(json).categories;

      return categories;
    } on SocketException {
      throw const Failure('Отсутствует Интернет-соединение :|');
    } on HttpException {
      throw const Failure('Категорий не найдено :0');
    } on FormatException {
      throw const Failure('Формат ответа не верен :(');
    }
  }
}