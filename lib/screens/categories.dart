import 'package:flutter/material.dart';

class MyCategoriesPage extends StatelessWidget {
  final dynamic args;
  const MyCategoriesPage({super.key,required this.args});

  @override
  Widget build(BuildContext context) {
    var arguments = ModalRoute.of(context)?.settings.arguments as Map;

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
            children:  [
             const Text(
                'Categories',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Text('${args["subtitle"]}',
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
           Navigator.pushNamed(context, '/products', arguments: {"category":"snacks_beverages"});
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
           Navigator.pushNamed(context, '/products',arguments: {'category':'fruits_vegetables'});
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
