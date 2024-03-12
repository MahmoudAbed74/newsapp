import 'package:flutter/material.dart';

import 'package:dio/dio.dart';

import 'package:newsapp/component/NewsTile.dart';
import 'package:newsapp/model/articalModel.dart';
import 'package:newsapp/services/news_Service.dart';

class NewsTile_listView_bulider extends StatelessWidget {
  const NewsTile_listView_bulider({super.key , required this.articales});

 final List<ArticalModel> articales ;

  // final List<NewsTileModel> newTileList = const [
  @override
  Widget build(BuildContext context) {
    return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: articales.length,
              (context, index) {
                return NewsTile(articalModel: articales[index]);
              },
            ),
          );
  }
}
