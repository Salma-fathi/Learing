import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int id, courses;
  final Color color;
  Product({
    required this.image,
    required this.title,
    required this.courses,
    required this.color,
    required this.id,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Graphic Design",
    image: "network/images/https://cdn.dribbble.com/users/2424774/screenshots/14183311/freelancer_dribbble_4x.png",
    color: Color(0xFF71b8ff),
    courses: 16,
  ),
  Product(
    id: 2,
    title: "Programming",
    image: "network/images/https://www.springboard.com/blog/wp-content/uploads/2021/12/What-Is-the-Best-Programming-Language-for-AI-scaled.jpg",
    color: Color(0xFFff6374),
    courses: 22,
  ),
  Product(
    id: 3,
    title: "Finance",
    image: "assets/images/finance.png",
    color: Color(0xFFffaa5b),
    courses: 15,
  ),
  Product(
    id: 4,
    title: "UI/Ux design",
    image: "assets/images/ux.png",
    color: Color(0xFF9ba0fc),
    courses: 18,
  ),
];