import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SliderComponent extends StatelessWidget {
  final List<String> carouselImages = [
    'https://tokopaedi-chi.vercel.app/assets/img/1.jpg',
    'https://tokopaedi-chi.vercel.app/assets/img/2.jpg',
    'https://tokopaedi-chi.vercel.app/assets/img/3.jpg',
    'https://tokopaedi-chi.vercel.app/assets/img/4.jpg',
    'https://tokopaedi-chi.vercel.app/assets/img/5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: carouselImages.map((image) {
        return Container(
          margin: EdgeInsets.all(5.0),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            child: Image.network(
              image,
              fit: BoxFit.cover,
              width: 1000.0,
            ),
          ),
        );
      }).toList(),
      options: CarouselOptions(
        height: 200.0,
        autoPlay: true,
        enlargeCenterPage: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        viewportFraction: 0.8,
      ),
    );
  }
}
