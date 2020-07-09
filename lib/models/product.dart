import 'package:flutter/material.dart';

class Product {
  final String title, location, image;
  final int price;
  Product({this.title, this.price, this.image, this.location});
}

List<Product> products = [
  Product(
      title: 'Eggs', location: 'Langata', image: 'images/eggs.jpg', price: 10),
  Product(
      title: 'Tomatoes',
      location: 'Karen',
      image: 'images/tomatoes.jpg',
      price: 120),
];
