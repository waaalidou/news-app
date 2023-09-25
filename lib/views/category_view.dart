import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/list_news_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              NewsListViewBuilder(
                category: category,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// SliverToBoxAdapter(
//                 child: GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (ctx) => const ArticleWebView(),
//                       ),
//                     );
//                   },
//                   child: NewsListViewBuilder(
//                     category: category,
//                   ),
//                 ),
//               )