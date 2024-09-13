// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/models/articlemodels.dart';
// import 'package:news_app/screens/news_shape.dart';
// import 'package:news_app/servies/news_serves.dart';
//
// class NewsListView extends StatefulWidget {
//   const NewsListView({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }
//
// class _NewsListViewState extends State<NewsListView> {
//   List<ArticleModel> articles = [];
//   bool isloading = true;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     GetGeneralNews();
//
//   }
//
//   Future<void> GetGeneralNews() async {
//     articles= await NewsClass(Dio()).getNews();
//     isloading =false;
//     setState(() {
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//
//     return isloading ? const
//     SliverToBoxAdapter(
//         child: Center(
//             child: CircularProgressIndicator())) :
//     SliverList(
//       delegate: SliverChildBuilderDelegate(
//               (context, index) {
//             return  Padding(
//               padding: EdgeInsets.only(top: 22.0),
//               child: NewsStyle(
//                 articleModel: articles[index],
//               ),
//             );
//           },
//           childCount: articles.length
//       ),
//     );
//   }
// }