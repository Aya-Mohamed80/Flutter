import 'package:flutter/material.dart';

class Product {
  final String name;
  final String image;

  Product(this.image, this.name);
}

class HomeScreen extends StatelessWidget {
  final List<Product> products = [
    Product('assets/img1.png', 'منتج 1'),
    Product('assets/img2.png', 'منتج 2'),
    Product('assets/img3.png', 'منتج 3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'الصفحة الرئيسية',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
        
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center, // يخليهم في النص
                  children: [
                    Image.asset(
                      products[index].image,
                      width: 80,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 50), // مسافة بين الصورة والاسم
                    Text(
                      products[index].name,
                      style: const TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
