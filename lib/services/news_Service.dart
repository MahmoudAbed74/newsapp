import 'package:dio/dio.dart';

import 'package:newsapp/model/articalModel.dart';

class news_service {
  final Dio dio;
  const news_service(this.dio);

  Future<List<ArticalModel>> getGeneralNews() async {
    try {
      Response response = await dio.get(
          "https://newsapi.org/v2/top-headlines?apiKey=5e3369148b34434a8deea22017d900d0&country=eg&category=general");
      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData["articles"];
      List<ArticalModel> articalList = articles
          .map((e) => ArticalModel(
              img: e[['urlToImage']],
              title: e["title"],
              subTitle: e["description"]))
          .toList();

      //ToDO another method
      // List<ArticalModel> articalList = [];

      // for (var article in articles) {
      //   ArticalModel articalModel = ArticalModel(
      //       img: article['urlToImage'],
      //       title: article["title"],
      //       subTitle: article["description"]);
      //   articalList.add(articalModel);
      // }

      print(articalList);
      return articalList;
    } catch (e) {
      return [];
    }
  }
}
