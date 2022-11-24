import 'dart:convert';

DiscoverProductResponse discoverProductResponseFromJson(String str) => DiscoverProductResponse.fromJson(json.decode(str));

String discoverProductResponseToJson(DiscoverProductResponse data) => json.encode(data.toJson());

class DiscoverProductResponse {
  DiscoverProductResponse({
    this.products = const [],
  });

  List<Product> products;

  factory DiscoverProductResponse.fromJson(Map<String, dynamic> json) => DiscoverProductResponse(
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
