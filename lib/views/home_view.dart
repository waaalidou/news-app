import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/app_bar_view.dart';
import 'package:news_app_ui_setup/widgets/categories_list_view.dart';
import 'package:news_app_ui_setup/widgets/list_news_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0),
        child: CustomScrollView(
          slivers: [
            AppBarWidget(),
            SliverToBoxAdapter(child: CategoriesListView()),
            SliverToBoxAdapter(child: SizedBox(height: 30)),
            NewsListViewBuilder(
              category: 'general',
            )
          ],
        ),
      ),
    );
  }
}
