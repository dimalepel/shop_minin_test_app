class ProductCategory {
  int id;
  String name;
  String imageUrl;

  ProductCategory({
    required this.id,
    required this.name,
    required this.imageUrl
  });

  ProductCategory.fromJson(Map<String, dynamic> json) :
    id = json['id'],
    name = json['name'],
    imageUrl = json['image_url'];
}

class ProductCategoryResponse {
  List<ProductCategory> categories;

  ProductCategoryResponse({
    required this.categories
  });

  ProductCategoryResponse.fromJson(Map<String, dynamic> json) :
    categories = List<ProductCategory>.from(json['сategories'].map((pc) => ProductCategory.fromJson(pc)));
}