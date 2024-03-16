import 'package:flutter/material.dart';

import 'package:dio/dio.dart';

import 'package:newsapp/component/news_tile_list.dart';
import 'package:newsapp/model/articalModel.dart';
import 'package:newsapp/services/news_Service.dart';

class DisplayNewsData extends StatefulWidget {
  const DisplayNewsData({
    super.key,
    required this.category 
  });
 final String category ;
  @override
  State<DisplayNewsData> createState() => _DisplayNewsDataState();
}

class _DisplayNewsDataState extends State<DisplayNewsData> {
  var future;
  @override
  void initState() {
    future = news_service(Dio()).getGeneralNews(category: widget.category);
    super.initState();
  }

  // Future<void> getGeneralNews() async {
  //   articales = await news_service(Dio()).getGeneralNews();
  //   isLoading = false;
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticalModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsTile_listView_bulider(articales: snapshot.data!);
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Text("Opss is not return data "),
          );
        } else {
          return const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()));
        }
      },
    );
  }
}
