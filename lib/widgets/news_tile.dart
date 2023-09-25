import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

// cached network image
class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.article});
  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: article.image != null
              ? Image.network(
                  article.image!,
                  height: 200,
                  errorBuilder: (context, error, stackTrace) => const FlutterLogo(),
                )
              : const FlutterLogo(),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          article.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          article.subTitle ?? '',
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}
// article.image != null
//               ? Image.network(
//                   article.image ?? '',
//                   height: 200,
//                   width: double.infinity,
//                   fit: BoxFit.cover,
//                 )
//               : const FlutterLogo()