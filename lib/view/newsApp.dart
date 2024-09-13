import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/category_models.dart';
import 'package:news_app/screens/catugaryCard.dart';
import 'package:news_app/screens/news_list_view.dart';
import 'package:news_app/screens/news_shape.dart';
import '../models/articlemodels.dart';
import '../models/newsListView.dart';
import '../screens/catugray_list_view.dart';
import '../servies/news_serves.dart';

class newsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'News',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                'App ',
                style: TextStyle(
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ),
        body:   const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomScrollView(
            physics:  BouncingScrollPhysics(),
            slivers: [
               SliverToBoxAdapter(
                child: catugarys_list_view(),
              ),
               SliverToBoxAdapter(
                child: SizedBox(height: 26),
              ),
              ReBuildNewsList(

                category: 'general',
              ),
            ],
          ),
        ),
    );
  }
}

