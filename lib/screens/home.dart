
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text('Insta Store', style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
          Container(
              height: 400,
              width: 300,
              margin: EdgeInsets.all(30),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://images.pexels.com/photos/235294/pexels-photo-235294.jpeg"),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle)),
          Container(
            margin: const EdgeInsets.all(30),
            alignment: Alignment.center,
            child: const Text("Welcome to the Insta Store",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Verdana',
                    color: Colors.red,
                    fontWeight: FontWeight.bold)),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 12,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                backgroundColor: Colors.orange[900]),
            onPressed: () {
             Navigator.pushNamed(context, '/categories', arguments: {"subtitle":"I'm glad you choose to shop"});
            },
            child: const Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'Shop Now!',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
