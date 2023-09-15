import 'dart:convert';
import 'dart:io';

import '../failure.dart';
import 'package:http/http.dart' as http;

import '../models/product_model.dart';

class ProductService {
  Future<List<Product>?> getProducts() async {
    try {
      final response = await http.get(Uri.parse('https://run.mocky.io/v3/aba7ecaa-0a70-453b-b62d-0e326c859b3b'));

      var json = jsonDecode(response.body);
      List<Product> products = ProductResponse.fromJson(json).dishes;

      return products;
    } on SocketException {
      throw const Failure('Отсутствует Интернет-соединение :|');
    } on HttpException {
      throw const Failure('Категорий не найдено :0');
    } on FormatException {
      throw const Failure('Формат ответа не верен :(');
    }
  }
}