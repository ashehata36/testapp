class Product {
  String id, price, company, picture, buyer, status, registered;
  bool isActive;
  List tags;

  Product({
    required this.id,
    required this.price,
    required this.company,
    required this.picture,
    required this.buyer,
    required this.status,
    required this.registered,
    required this.isActive,
    required this.tags,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json["id"],
      price: json["price"],
      company: json["company"],
      picture: json["picture"],
      buyer: json["buyer"],
      status: json["status"],
      registered: json["registered"],
      isActive: json["isActive"],
      tags: json["tags"],
    );
  }
}
