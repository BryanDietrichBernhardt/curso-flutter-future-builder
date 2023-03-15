import 'dart:ffi';

class Products {
  final List products;

  Products(this.products);
}

class Product {
  final String id;
  final String image;
  final double price;
  final String product;
  final int quantity;
  final String description;

  Product(this.id, this.image, this.price, this.product, this.quantity,
      this.description);

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      json['id'],
      json['image'],
      json['price'],
      json['product'],
      json['quantity'],
      json['description'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'image': image,
        'price': price,
        'product': product,
        'quantity': quantity,
        'description': description
      };
}

List<dynamic> jsonDemo = [
  {
    "id": "6411f8a5682b554fd497adb1",
    "image": "http://placehold.it/128x128",
    "price": 297.87,
    "product": "culpa adipisicing elit",
    "quantity": 76,
    "description":
        "Ex laborum magna et non tempor enim. Nulla magna adipisicing elit duis aliqua nulla aute ad irure."
  },
  {
    "id": "6411f8a5836f63f484aacbf8",
    "image": "http://placehold.it/128x128",
    "price": 183.52,
    "product": "ad voluptate non",
    "quantity": 85,
    "description":
        "Aliqua amet qui labore anim. Irure ad in Lorem esse Lorem culpa mollit do velit veniam."
  },
];
