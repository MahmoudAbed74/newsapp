import 'package:flutter/material.dart';

import 'package:newsapp/component/Category_listView_builder.dart';
import 'package:newsapp/component/CustomeListView.dart';
import 'package:newsapp/component/DisplayData.dart';
import 'package:newsapp/component/DisplayData.dart';

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
      body: const CustomeListView(),
    );
  }
}

