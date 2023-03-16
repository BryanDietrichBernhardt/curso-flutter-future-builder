import 'package:flutter/material.dart';
import 'package:products_app/models/product.dart';

class ProductEditPage extends StatefulWidget {
  const ProductEditPage({super.key, required this.product});
  final Product product;

  @override
  State<ProductEditPage> createState() => _ProductEditPageState();
}

class _ProductEditPageState extends State<ProductEditPage> {
  @override
  Widget build(BuildContext context) {
    final _controllerName = TextEditingController();
    final _controllerDescription = TextEditingController();
    final _controllerQuantity = TextEditingController();
    final _controllerPrice = TextEditingController();
    final _controllerImage = TextEditingController();
    _controllerName.text = widget.product.product;
    _controllerDescription.text = widget.product.description;
    _controllerQuantity.text = widget.product.quantity.toString();
    _controllerPrice.text = widget.product.price.toString();
    _controllerImage.text = widget.product.image;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Editar"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                keyboardType: TextInputType.text,
                autofocus: true,
                onChanged: (value) {},
                controller: _controllerName,
                decoration: const InputDecoration(
                  labelText: "Produto",
                ),
              ),
              TextField(
                keyboardType: TextInputType.multiline,
                onChanged: (value) {},
                controller: _controllerDescription,
                decoration: const InputDecoration(
                  labelText: "Descrição",
                ),
              ),
              TextField(
                keyboardType: TextInputType.url,
                onChanged: (value) {},
                controller: _controllerImage,
                decoration: const InputDecoration(
                  labelText: "Imagem",
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {},
                controller: _controllerQuantity,
                decoration: const InputDecoration(
                  labelText: "Estoque",
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {},
                controller: _controllerPrice,
                decoration: const InputDecoration(
                  labelText: "Preço",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      minimumSize: const Size(
                        double.infinity,
                        50,
                      ),
                    ),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text("Salvar"),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
