import 'screens/home.dart';
import 'screens/categories.dart';
import 'screens/products.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyStore());
}

class MyStore extends StatelessWidget {
  const MyStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/home': (context) => const MyHomePage(),
        '/categories': (context) => const MyCategories(),
        '/snacks_beverages': (context) => const SnacksAndBeveragesProducts(),
        '/fruits_vegetables': (context) => const FreshFruitsAndVegetablesProducts(),
      },
      title: 'Insta Store',
    );
  }
}
