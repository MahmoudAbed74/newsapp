import 'package:flutter/material.dart';

import 'package:dio/dio.dart';

import 'package:newsapp/component/CategoryCard.dart';
import 'package:newsapp/model/category.dart';

class Category_listView_builder extends StatelessWidget {
  const Category_listView_builder({
    super.key,
  });

  final List<CategoryItem> categoryList = const [
    CategoryItem(imgPath: "assets/Technology.jpg", textImg: "Technology"),
    CategoryItem(imgPath: "assets/enterminter.jpg", textImg: "Entertainment"),
    CategoryItem(imgPath: "assets/Bussiness.jpg", textImg: "Bussiness"),
    CategoryItem(imgPath: "assets/Maps.jpg", textImg: "Maps"),
    CategoryItem(imgPath: "assets/news.jpg", textImg: "News"),
    CategoryItem(imgPath: "assets/sports.jpg", textImg: "Sports"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: GestureDetector(
        onTap: () {
          print("object");
        },
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 15),
              child: CategoryCard(category: categoryList[index]),
            );
          },
        ),
      ),
    );
  }
}
