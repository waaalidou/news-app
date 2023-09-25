import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

class NewsServices {
  final Dio dio;
  const NewsServices(this.dio);

  Future<List<ArticleModel>> getTopHeadlines({category = 'general'}) async {
    try {
      Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=YourKeyGoesHere&category=$category',
      );
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      //  List<ArticleModel> articlesList = [];
      // for (var article in articles) {
      //   var articleModel = ArticleModel.fromJSON(article);
      //   articlesList.add(articleModel);
      // }
      List<ArticleModel> articlesList = articles
          .map(
            (article) => ArticleModel.fromJSON(article),
          )
          .toList();
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
