import 'package:flutter/material.dart';

class Item {
  String name;
  String description;
  int price;
  String photo;
  int stock;
  double rating;

  Item({
    required this.name,
    required this.description,
    required this.price,
    required this.photo,
    required this.stock,
    required this.rating,
  });
}