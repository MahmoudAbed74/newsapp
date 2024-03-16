import 'package:flutter/material.dart';

import 'package:newsapp/component/CategoryCard.dart';
import 'package:newsapp/component/Category_listView_builder.dart';
import 'package:newsapp/component/DisplayData.dart';
import 'package:newsapp/model/category.dart';
import 'package:newsapp/model/category.dart';
import 'package:newsapp/views/CategoryView.dart';

class Category_listView_builder extends StatelessWidget {
  const Category_listView_builder({
    super.key,
  });

  final List<CategoryItem> categoryList = const [
    CategoryItem(
        imgPath: "assets/Technology.jpg",
        textImg: "Technology",
        categoryName: "technology"),
    CategoryItem(
        imgPath: "assets/enterminter.jpg",
        textImg: "Entertainment",
        categoryName: "entertainment"),
    CategoryItem(
        imgPath: "assets/Bussiness.jpg",
        textImg: "Bussiness",
        categoryName: "Bussiness"),
    CategoryItem(
        imgPath: "assets/Maps.jpg", textImg: "Maps", categoryName: "science"),
    CategoryItem(
        imgPath: "assets/news.jpg", textImg: "News", categoryName: "health"),
    CategoryItem(
        imgPath: "assets/sports.jpg",
        textImg: "Sports",
        categoryName: "sports"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return CategoryView(
                          category: categoryList[index].categoryName);
                    },
                  ));
                },
                child: CategoryCard(category: categoryList[index])),
          );
        },
      ),
    );
  }
}
