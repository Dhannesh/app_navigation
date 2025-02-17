import 'package:flutter/material.dart';

class Product{
  final String image;
  final String title;
  Product({required this.image, required this.title});
}

List<Product> snackAndBeverages = [
  Product(image: 'images/cookies.jpg', title: 'Cookies'),
  Product(image: 'images/popcorn.jpg', title: 'Popcorn'),
  Product(image: 'images/iced_tea.jpg', title: 'Iced Tea'),
  Product(image: 'images/orange_juice.jpg', title: 'Orange Juice'),
  Product(image: 'images/lemonade.jpg', title: 'Lemonade'),
];

class SnacksAndBeveragesProducts extends StatelessWidget {
  const SnacksAndBeveragesProducts({super.key});

  @override
  Widget build(BuildContext context) {
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
              itemCount: snackAndBeverages.length,
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
                      backgroundImage: AssetImage(snackAndBeverages[index].image),
                    ) ,
                    title: Text(snackAndBeverages[index].title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    onTap: (){
                      debugPrint(snackAndBeverages[index].title);
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


List<Product> freshFruitsAndVegetables = [
  Product(image: 'images/apples.jpg', title: 'Apples'),
  Product(image: 'images/mangoes.jpg', title: 'Mangoes'),
  Product(image: 'images/bananas.jpg', title: 'Bananas'),
  Product(image: 'images/beans.jpg', title: 'Beans'),
  Product(image: 'images/carrots.jpg', title: 'Carrots'),
];

class FreshFruitsAndVegetablesProducts extends StatelessWidget {
  const FreshFruitsAndVegetablesProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text('Insta Store', style: TextStyle(color: Colors.white),),
      ),
      body:
      Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: freshFruitsAndVegetables.length,
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
                      backgroundImage: AssetImage(freshFruitsAndVegetables[index].image),
                    ) ,
                    title: Text(freshFruitsAndVegetables[index].title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: (){
                      debugPrint(freshFruitsAndVegetables[index].title);
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
            icon: const Icon(Icons.arrow_back),
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

