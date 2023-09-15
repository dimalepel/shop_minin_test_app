class Product {
  int id;
  String name;
  String imageUrl;
  int price;
  int weight;
  String description;
  List<dynamic> tags;

  Product({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.weight,
    required this.description,
    required this.tags
  });

  Product.fromJson(Map<String, dynamic> json) :
    id = json['id'],
    name = json['name'],
    price = json['price'],
    weight = json['weight'],
    description = json['description'],
    imageUrl = json['image_url'],
    tags = json['tegs'];
}

class ProductResponse {
  List<Product> dishes;

  ProductResponse({
    required this.dishes
  });
  
  ProductResponse.fromJson(Map<String, dynamic> json) :
    dishes = List<Product>.from(json['dishes'].map((p) => Product.fromJson(p)));
}