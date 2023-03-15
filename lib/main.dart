import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:products_app/screens/home_page.dart';
import 'package:products_app/screens/product/products_page.dart';

Future main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Products App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          elevation: 0,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        'products': (context) => const ProductsPage(),
      },
    );
  }
}
