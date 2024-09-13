import 'package:dio/dio.dart';
import 'package:news_app/models/articlemodels.dart';

class NewsClass {
  final  Dio dio ;

  NewsClass(this.dio);
  Future<List<ArticleModel>> getNews({required String category})async{
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=3c88955c487e4d9db668f011dd85e737&category=$category');
      Map<String,dynamic> jesonData = response.data;
      List<dynamic> articles = jesonData['articles']  ;
      List<ArticleModel> articleList =[];
        for(var article in articles){
          ArticleModel articlemodel = ArticleModel(
              image: article['urlToImage'],
              title:article['title'] ,
              subTitle:article['description'],
          );
          articleList.add(articlemodel);
        }
        return articleList;
    } catch (e) {
      return [];
    }
  }
}
