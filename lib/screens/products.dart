import 'package:flutter/material.dart';

class Product{
  final String image;
  final String title;
  Product({required this.image, required this.title});
}

List<Product> _snackAndBeverages = [
  Product(image: 'images/cookies.jpg', title: 'Cookies'),
  Product(image: 'images/popcorn.jpg', title: 'Popcorn'),
  Product(image: 'images/iced_tea.jpg', title: 'Iced Tea'),
  Product(image: 'images/orange_juice.jpg', title: 'Orange Juice'),
  Product(image: 'images/lemonade.jpg', title: 'Lemonade'),
];

List<Product> _freshFruitsAndVegetables = [
  Product(image: 'images/apples.jpg', title: 'Apples'),
  Product(image: 'images/mangoes.jpg', title: 'Mangoes'),
  Product(image: 'images/bananas.jpg', title: 'Bananas'),
  Product(image: 'images/beans.jpg', title: 'Beans'),
  Product(image: 'images/carrots.jpg', title: 'Carrots'),
];
Map<String, List<Product>> productsMap = {
  'snacks_beverages': _snackAndBeverages,
  'fruits_vegetables': _freshFruitsAndVegetables
};

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    var arguments = ModalRoute.of(context)?.settings.arguments as Map;
    var category = arguments['category'] as String;
    var products = productsMap[category] ?? [];
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Insta Store', style: TextStyle(
          color: Colors.white,
        ),),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context,index){
                return Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)
                  ),
                  color: Colors.green[100],
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(products[index].image),
                    ) ,
                    title: Text(products[index].title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: (){
                      debugPrint(products[index].title);
                    },
                  ),
                );
              },
            ),
          ),
          IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)
          ),
        ],
      ),
    );

  }
}
