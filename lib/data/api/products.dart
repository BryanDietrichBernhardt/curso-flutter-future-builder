import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:products_app/models/product.dart';

Future<List<Product>> getProducts() async {
  List<Product> products = [];

  Uri uri = Uri.https(
    dotenv.get("URL_PRODUCTS_API"),
    '/templates/WDZu6KejHMzA/data',
    {
      'access_token': dotenv.get('ACCESS_TOKEN'),
    },
  );
  var response = await http.get(uri);
  if (response.statusCode == 200) {
    var data = json.decode(response.body);

    data.forEach((element) {
      Product product = Product.fromJson(element);
      products.add(product);
    });
  }
  return products;
}
