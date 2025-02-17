import 'screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyStore());
}

class MyStore extends StatelessWidget {
  const MyStore({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Insta Store',
      color: Colors.white,
      home: MyHomePage(),
    );
  }
}
