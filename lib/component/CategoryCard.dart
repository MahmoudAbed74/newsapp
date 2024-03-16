import 'package:flutter/material.dart';

import 'package:newsapp/model/category.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.category,
  });

  final CategoryItem category;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
            fit: BoxFit.fill, image: AssetImage(category.imgPath)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
          child: Text(
        category.textImg,
        style: const TextStyle(
          color: Colors.yellow,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      )),
    );
  }
}
