class Product {
  String id;
  String name;
  String createdAt;

  Product(
      this.id,
      this.name,
      this.createdAt);

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      json['id'],
      json['name'],
      json['created_at']
    );
    }
}