import 'package:flutter/material.dart';

import 'package:dio/dio.dart';

import 'package:newsapp/component/Category_listView_builder.dart';
import 'package:newsapp/component/news_tile_list.dart';
import 'package:newsapp/model/articalModel.dart';
import 'package:newsapp/services/news_Service.dart';

// class NewsTile_listView_bulider extends StatefulWidget {
//   const NewsTile_listView_bulider({super.key});

//   @override
//   State<NewsTile_listView_bulider> createState() =>
//       _NewsTile_listView_buliderState();
// }

// class _NewsTile_listView_buliderState extends State<NewsTile_listView_bulider> {
//   List<ArticalModel> articales = [];
//   bool isLoading = true;
//   @override
//   void initState() {
//     getGeneralNews();
//     super.initState();
//   }

//   Future<void> getGeneralNews() async {
//     articales = await news_service(Dio()).getGeneralNews();
//     isLoading = false;
//     setState(() {});
//   }

//   // final List<NewsTileModel> newTileList = const [
//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ? const SliverToBoxAdapter(
//             child: Center(child: CircularProgressIndicator()))
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(
//               childCount: articales.length,
//               (context, index) {
//                 return NewsTile(articalModel: articales[index]);
//               },
//             ),
//           );
//   }
// }
