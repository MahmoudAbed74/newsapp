import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:newsapp/services/news_Service.dart';
import 'package:newsapp/views/homeView.dart';

void main() {
  news_service(Dio()).getGeneralNews();
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeViewPage(),
    );
  }
}
