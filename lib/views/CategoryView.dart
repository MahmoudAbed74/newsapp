import 'package:flutter/material.dart';

import 'package:newsapp/component/Category_listView_builder.dart';
import 'package:newsapp/component/DisplayData.dart';
import 'package:newsapp/model/category.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          DisplayNewsData(
            category: category,
          )
        ],
      ),
    );
  }
}
