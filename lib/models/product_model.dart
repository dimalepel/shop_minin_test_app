class Product {
  int id;
  String name;
  String imageUrl;
  int price;
  int weight;
  String description;
  List<String> tags;

  Product({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.weight,
    required this.description,
    required this.tags
  });
}