class ArticleModel {
  final String? image;
  final String title;
  final String url;
  final String? subTitle;

  ArticleModel(
      {required this.image,
      required this.title,
      required this.subTitle,
      required this.url});
  factory ArticleModel.fromJSON(json) {
    return ArticleModel(
        image: json['urlToImage'],
        title: json['title'],
        subTitle: json['description'],
        url: json['url'],);
  }
}
