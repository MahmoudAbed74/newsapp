import 'package:flutter/material.dart';

import 'package:newsapp/component/NewsTile.dart';
import 'package:newsapp/model/NewsTileModel.dart';

class NewsTile_listView_bulider extends StatelessWidget {
  const NewsTile_listView_bulider({super.key});
  final List<NewsTileModel> newTileList = const [
    NewsTileModel(
        titleText:
            "Deco meets with Haaland's agents.. Will Laporta achieve his big dream?",
        bodyText:
            "Today, Wednesday, a Spanish press report sparked a huge surprise about a meeting between Barcelona’s management and the agents of the Norwegian player Erling Haaland, the Manchester City striker.",
        imgPath: "assets/newsposts/news1.jpg"),
    NewsTileModel(
        titleText:
            "Deco meets with Haaland's agents.. Will Laporta achieve his big dream?",
        bodyText:
            "Today, Wednesday, a Spanish press report sparked a huge surprise about a meeting between Barcelona’s management and the agents of the Norwegian player Erling Haaland, the Manchester City striker.",
        imgPath: "assets/newsposts/news1.jpg"),
    NewsTileModel(
        titleText:
            "Deco meets with Haaland's agents.. Will Laporta achieve his big dream?",
        bodyText:
            "Today, Wednesday, a Spanish press report sparked a huge surprise about a meeting between Barcelona’s management and the agents of the Norwegian player Erling Haaland, the Manchester City striker.",
        imgPath: "assets/newsposts/news1.jpg"),
    NewsTileModel(
        titleText:
            "Deco meets with Haaland's agents.. Will Laporta achieve his big dream?",
        bodyText:
            "Today, Wednesday, a Spanish press report sparked a huge surprise about a meeting between Barcelona’s management and the agents of the Norwegian player Erling Haaland, the Manchester City striker.",
        imgPath: "assets/newsposts/news1.jpg"),
    NewsTileModel(
        titleText:
            "Deco meets with Haaland's agents.. Will Laporta achieve his big dream?",
        bodyText:
            "Today, Wednesday, a Spanish press report sparked a huge surprise about a meeting between Barcelona’s management and the agents of the Norwegian player Erling Haaland, the Manchester City striker.",
        imgPath: "assets/newsposts/news1.jpg"),
    NewsTileModel(
        titleText:
            "Deco meets with Haaland's agents.. Will Laporta achieve his big dream?",
        bodyText:
            "Today, Wednesday, a Spanish press report sparked a huge surprise about a meeting between Barcelona’s management and the agents of the Norwegian player Erling Haaland, the Manchester City striker.",
        imgPath: "assets/newsposts/news1.jpg"),
    NewsTileModel(
        titleText:
            "Deco meets with Haaland's agents.. Will Laporta achieve his big dream?",
        bodyText:
            "Today, Wednesday, a Spanish press report sparked a huge surprise about a meeting between Barcelona’s management and the agents of the Norwegian player Erling Haaland, the Manchester City striker.",
        imgPath: "assets/newsposts/news1.jpg"),
    NewsTileModel(
        titleText:
            "Deco meets with Haaland's agents.. Will Laporta achieve his big dream?",
        bodyText:
            "Today, Wednesday, a Spanish press report sparked a huge surprise about a meeting between Barcelona’s management and the agents of the Norwegian player Erling Haaland, the Manchester City striker.",
        imgPath: "assets/newsposts/news1.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount:newTileList.length ,
        (context, index) {
          return NewsTile(newsTileModel: newTileList[index]);
        },
      ),
    );
  }
}
