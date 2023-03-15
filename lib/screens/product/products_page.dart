import 'package:flutter/material.dart';
import 'package:products_app/data/api/products.dart';
import 'package:products_app/models/product.dart';
import 'package:products_app/screens/product/product_detail_page.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    getProducts();
    return Scaffold(
        appBar: AppBar(
          title: const Text("Produtos"),
        ),
        body: FutureBuilder(
          future: getProducts(),
          builder: (_, snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            List<Product>? products = snapshot.data;
            return products != null && products.isNotEmpty
                ? ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: products[index].image.isNotEmpty
                                ? Image.network(products[index].image)
                                : const Icon(Icons.image),
                          ),
                          title: Text(products[index].product),
                          trailing: Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            spacing: 8,
                            children: [
                              Wrap(
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  const Icon(Icons.inventory_2_outlined),
                                  Text(
                                    products[index].quantity.toString(),
                                  ),
                                ],
                              ),
                              Wrap(
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  const Icon(Icons.monetization_on_outlined),
                                  Text(
                                    products[index]
                                        .price
                                        .toString()
                                        .replaceAll('.', ','),
                                  ),
                                ],
                              )
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return ProductDetailPage(
                                    product: products[index],
                                  );
                                },
                              ),
                            );
                          },
                        ),
                      );
                    },
                  )
                : const Center(
                    child: Text("Nenhum produto cadastrado."),
                  );
          },
        ));
  }
}
