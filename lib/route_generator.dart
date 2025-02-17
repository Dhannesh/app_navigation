import 'package:flutter/material.dart';
import 'screens/home.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
      case '/home':
        return MaterialPageRoute(builder: (_) => const MyHomePage());
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
