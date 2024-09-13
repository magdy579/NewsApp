
import 'package:flutter/material.dart';
import 'package:news_app/screens/news_shape.dart';
import 'package:news_app/screens/news_list_view.dart';
import 'package:news_app/servies/news_serves.dart';
import 'articlemodels.dart';

class ReBuildNewsList extends StatefulWidget {
  const ReBuildNewsList({Key? key, required this.category}) : super(key: key);
  final String category;
  @override
  State<ReBuildNewsList> createState() => _ReBuildNewsListState();
}

class _ReBuildNewsListState extends State<ReBuildNewsList> {
  
  @override
  var future;


  _ReBuildNewsListState();
  void initState() {
    // TODO: implement initState
    super.initState();
        future =NewsClass(Dio()).getNews(
        category: widget.category);
  }
  @override
  
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(

      future: future,

      builder: (context,snapshot) {
      if(snapshot.hasData){
        return NewsListView(
               articles: snapshot.data??[],
            );
      }
      else if(snapshot.hasError){
        return const SliverToBoxAdapter(
          child: Text('oops  was an error, try later'),
        );
      } else {
          return const SliverToBoxAdapter(child:
               Center(
                   child: CircularProgressIndicator(),
               ));
      }
    }) ;



  }
}
