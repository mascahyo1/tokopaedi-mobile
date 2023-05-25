import 'package:flutter/material.dart';
import 'package:shop/components/navbar.dart';
import 'package:shop/components/slider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navbar(),
      body: Column(
        children: [
          SliderComponent(),
          SizedBox(height: 20.0),
          Text('E-commerce App Content'),
        ],
      ),
    );
  }
}
