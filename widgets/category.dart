import 'package:flutter/material.dart';
import './category_card.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CategoryCard(
            Icon(Icons.book, size: 40,), 
            'Book'),
            CategoryCard(
            Icon(Icons.book, size: 40,), 
            'Book'),
            CategoryCard(
            Icon(Icons.book, size: 40,), 
            'Book'),
            CategoryCard(
            Icon(Icons.book, size: 40,), 
            'Book'),
            CategoryCard(
            Icon(Icons.book, size: 40,), 
            'Book'),
            CategoryCard(
            Icon(Icons.book, size: 40,), 
            'Book'),
        ],
      ),
    );
  }
}