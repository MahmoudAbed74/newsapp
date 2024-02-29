import 'package:flutter/material.dart';

import 'package:newsapp/model/NewsTileModel.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.newsTileModel});
  final NewsTileModel newsTileModel;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Column(
        children: [
          Image.asset(
            newsTileModel.imgPath,
            fit: BoxFit.fill,
          ),
          Text(
            newsTileModel.titleText,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            newsTileModel.bodyText,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.normal,
                fontSize: 18),
          ),
        ],
      ),
    );
  }
}
