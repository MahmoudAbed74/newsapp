class ArticalModel {
  final String? img;
  final String title;
  final String? subTitle;

  const ArticalModel(
      {required this.img, required this.title, required this.subTitle});

 factory ArticalModel.fromJson(json){

    return ArticalModel(img: json['urlToImage'], title:json["title"], subTitle:json["description"]);
  }    
}
