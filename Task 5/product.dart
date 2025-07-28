import 'package:flutter/material.dart';

class Product {
  final String name;
  final String image;
  double price;
  bool isLiked;

  Product({required this.name, required this.image, this.price = 0.0, this.isLiked = false});
}

  List<Product> products = [
    Product(name: "Product 1", image: "assets/img1.jpg", price: 29.99),
    Product(name: "Product 2", image: "assets/img2.jpg", price: 49.99),
    Product(name: "Product 3", image: "assets/img3.jpg", price: 19.99),
    Product(name: "Product 4", image: "assets/img4.jpg", price: 39.99),
    Product(name: "Product 5", image: "assets/img5.jpg", price: 59.99),
  ];

  final List<Map<String, dynamic>> categories = [
    {'icon': Icons.chair, 'label': 'Chairs'},
    {'icon': Icons.bed, 'label': 'Beds'},
    {'icon': Icons.table_bar, 'label': 'Tables'},
    {'icon': Icons.chair_alt, 'label': 'Sofas'},
    {'icon': Icons.kitchen, 'label': 'Kitchens'},
    {'icon': Icons.storage, 'label': 'Storage'},
    {'icon': Icons.wallpaper, 'label': 'Decor'},
    {'icon': Icons.lightbulb, 'label': 'Lighting'},
    {'icon': Icons.plumbing, 'label': 'Plumbing'},
    {'icon': Icons.electrical_services, 'label': 'Electrical'},
    {'icon': Icons.cleaning_services, 'label': 'Cleaning'},   
    {'icon': Icons.security, 'label': 'Security'},
    {'icon': Icons.build, 'label': 'Tools'},
    {'icon': Icons.hardware, 'label': 'Hardware'},
    {'icon': Icons.miscellaneous_services, 'label': 'Miscellaneous'},
  ];