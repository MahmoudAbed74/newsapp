import 'package:flutter/material.dart';

import 'package:newsapp/model/articalModel.dart';
import 'package:newsapp/services/news_Service.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articalModel});
  // final NewsTileModel newsTileModel;
  final ArticalModel articalModel;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Column(
        children: [
          articalModel.img != null
              ? Image.network(
                  articalModel.img!,
                  fit: BoxFit.fill,
                )
              : Image.asset("assets/sports.jpg"),
          Text(
            articalModel.title == null || articalModel.title == "[Removed]"
                ? " "
                : articalModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            articalModel.subTitle == null || articalModel.title == "[Removed]"
                ? " "
                : articalModel.subTitle!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
