import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/services/news_services.dart';
import 'package:news_app_ui_setup/views/home_view.dart';

void main() {
  NewsServices(Dio()).getTopHeadlines();
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        useMaterial3: true,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      home: const HomeView(),
    );
  }
}
