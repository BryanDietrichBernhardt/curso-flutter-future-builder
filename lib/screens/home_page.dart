import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(
              Icons.shopping_cart_outlined,
              size: 250,
              color: Colors.blue,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'products');
              },
              child: const Padding(
                padding: EdgeInsets.fromLTRB(24, 16, 24, 16),
                child: Text(
                  "Produtos",
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
