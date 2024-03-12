import 'package:flutter/material.dart';

import 'package:dio/dio.dart';

import 'package:newsapp/component/Category_listView_builder.dart';
import 'package:newsapp/component/news_tile_list.dart';
import 'package:newsapp/model/articalModel.dart';
import 'package:newsapp/services/news_Service.dart';

class HomeViewPage extends StatelessWidget {
  const HomeViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "News",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              "Cloud",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.orange,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
      body: const CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Category_listView_builder(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 22,
            ),
          ),
          displayNewsData()
        ],
      ),
    );
  }
}

class displayNewsData extends StatefulWidget {
  const displayNewsData({
    super.key,
  });

  @override
  State<displayNewsData> createState() => _displayNewsDataState();
}

class _displayNewsDataState extends State<displayNewsData> {
  List<ArticalModel> articales = [];
  bool isLoading = true;
  @override
  void initState() {
    getGeneralNews();
    super.initState();
  }

  Future<void> getGeneralNews() async {
    articales = await news_service(Dio()).getGeneralNews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()))
        : NewsTile_listView_bulider(
            articales: articales,
          );
  }
}
