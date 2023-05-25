import 'package:flutter/material.dart';
import 'package:shop/components/navbar.dart';
import 'package:shop/components/slider.dart';
import 'package:shop/components/product_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Product> products = [
    Product(
      imageURL: 'https://flowbite.com/docs/images/products/apple-watch.png',
      rating: 4.5,
      title: 'Apple Watch',
      price: 299.99,
    ),
    Product(
      imageURL: 'https://flowbite.com/docs/images/products/apple-watch.png',
      rating: 4.2,
      title: 'Wireless Headphones',
      price: 99.99,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navbar(),
      body: Column(
        children: [
          SliderComponent(),
          SizedBox(height: 20.0),
          Text('E-commerce App Content'),
          SizedBox(height: 20.0),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: products.map((product) {
              return ProductCard(
                imageURL: product.imageURL,
                rating: product.rating,
                title: product.title,
                price: product.price,
                addToCart: () {
                  // Implement the add to cart functionality here
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class Product {
  final String imageURL;
  final double rating;
  final String title;
  final double price;

  Product({
    required this.imageURL,
    required this.rating,
    required this.title,
    required this.price,
  });
}
