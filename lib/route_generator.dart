import 'screens/categories.dart';
import 'screens/products.dart';
import 'package:flutter/material.dart';
import 'screens/home.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
      case '/home':
        return MaterialPageRoute(builder: (_) => const MyHomePage());
        case '/categories':
          return MaterialPageRoute(builder: (_)=> MyCategoriesPage(
            args:args
          ));
      case '/products':
        return MaterialPageRoute(builder: (_)=> Products(
          args:args
        ));
      default:
        return _errorRoute();
    }
  }


  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
        builder: (_) =>
            Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.red,
                title: const Text('Error'),
              ),
              body: const Center(
                child: Text('Oops! Page not found'),
              ),
            )
    );
  }
}
