import 'products.dart';
import 'package:flutter/material.dart';

class MyCategories extends StatelessWidget {
  const MyCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text('Insta Store',style: TextStyle(color: Colors.white)),
      ),
      body: Column(children: [
        Container(
          height: 200,
          margin: const EdgeInsets.all(30),
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              border: Border(
                  left: BorderSide(color: Colors.grey, width: 10),
                  right: BorderSide(color: Colors.grey, width: 10),
                  top: BorderSide(color: Color(0x776ae792), width: 20),
                  bottom: BorderSide(color: Color(0x776ae792), width: 20))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text(
                'Categories',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Text('Here are the category',
                    style: TextStyle(fontSize: 20, color: Colors.black)),
              )
            ],
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 12,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            backgroundColor: Colors.orange[200],
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SnacksAndBeverages()),
            );
          },
          child: const Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              'Snack and Beverages',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 12,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            backgroundColor: Colors.orange[200],
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FreshFruitsAndVegetablesProducts()),
            );
          },
          child: const Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              'Fresh Fruits and Vegetables',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
        )
      ]),
    );
  }
}
