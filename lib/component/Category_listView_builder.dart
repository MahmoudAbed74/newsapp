
import 'package:flutter/material.dart';

class Category_listView_builder extends StatelessWidget {
  const Category_listView_builder({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 15),
            child: CategoryCard(
                imgPath: "assets/Technology.jpg", textImg: "Technology"),
          );
        },
      ),
    );
  }
}
