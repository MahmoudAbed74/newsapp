import 'package:flutter/material.dart';

import 'package:newsapp/component/Category_listView_builder.dart';
import 'package:newsapp/component/DisplayData.dart';
class CustomeListView extends StatelessWidget {
  const CustomeListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Category_listView_builder(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 22,
          ),
        ),
        DisplayNewsData(category:"general" ,)
      ],
    );
  }
}
