import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import 'package:news_app_ui_setup/services/news_services.dart';
import 'package:news_app_ui_setup/widgets/error_message.dart';
import 'package:news_app_ui_setup/widgets/news_list_view.dart';
import 'package:news_app_ui_setup/widgets/progress_indicator.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    required this.category,
    super.key,
  });
  final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  late Future<List<ArticleModel>> articles;
  @override
  void initState() {
    articles = NewsServices(Dio()).getTopHeadlines(category: widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: articles,
      builder: (ctx, snapShot) {
        if (snapShot.hasData) {
          return NewsListView(
            articles: snapShot.requireData,
          );
        }
        if (snapShot.hasError) {
          return const SliverToBoxAdapter(
            child: ErrorMessage(
              message: "Something wrong ocurred. Try again later",
            ),
          );
        }
        return const SliverFillRemaining(
          child: ProgressIndicatorWidget(),
        );
      },
    );
  }
}
