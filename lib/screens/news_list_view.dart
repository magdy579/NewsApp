import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/articlemodels.dart';
import 'package:news_app/screens/news_shape.dart';
import 'package:news_app/servies/news_serves.dart';


class NewsListView extends StatelessWidget {
  final  List<ArticleModel> articles ;

  NewsListView({Key? key, required this.articles}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return SliverList(
      delegate: SliverChildBuilderDelegate(
              (context, index) {
            return  Padding(
              padding: EdgeInsets.only(top: 22.0),
              child: NewsStyle(
                articleModel: articles[index],
              ),
            );
          },
          childCount: articles.length
      ),
    );
  }
}