import 'package:flutter/material.dart';
import 'package:news_app/models/newsListView.dart';
import 'package:news_app/screens/news_list_view.dart';

class bussinesCatugary extends StatelessWidget {
  const bussinesCatugary({Key? key, required this.category}) : super(key: key);
    final String category;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          
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
     body: CustomScrollView(
          slivers: [
            ReBuildNewsList(
              category: category,
            ),
          ],
    ),

    );
  }
}
