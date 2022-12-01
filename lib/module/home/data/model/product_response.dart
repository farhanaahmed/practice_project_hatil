import 'dart:convert';

ProductResponse discoverProductResponseFromJson(String str) => ProductResponse.fromJson(json.decode(str));

String discoverProductResponseToJson(ProductResponse data) => json.encode(data.toJson());

class ProductResponse {
  ProductResponse({
    this.products = const [],
  });

  List<Product> products;

  factory ProductResponse.fromJson(Map<String, dynamic> json) => ProductResponse(
    products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "products": List<dynamic>.from(products.map((x) => x.toJson())),
  };
}

class Product {
  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
  });

  String id;
  String name;
  String image;
  double price;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json["id"],
    name: json["name"],
    image: json["image"],
    price: json["price"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "image": image,
    "price": price,
  };
}
