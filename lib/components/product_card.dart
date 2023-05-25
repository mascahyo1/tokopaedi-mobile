import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imageURL;
  final double rating;
  final String title;
  final double price;
  final VoidCallback addToCart;

  ProductCard({
    required this.imageURL,
    required this.rating,
    required this.title,
    required this.price,
    required this.addToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Center(
              child: Image.network(
                imageURL,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow),
                    SizedBox(width: 5.0),
                    Text(rating.toString()),
                  ],
                ),
                Text(
                  '\$$price',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 8.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextButton(
              onPressed: addToCart,
              child: Text('Add to Cart'),
            ),
          ),
        ],
      ),
    );
  }
}
