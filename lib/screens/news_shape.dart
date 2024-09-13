import 'package:flutter/material.dart';
import 'package:news_app/models/articlemodels.dart';

class NewsStyle extends StatelessWidget {
  
    final ArticleModel articleModel;


  const NewsStyle({Key? key, required this.articleModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child:articleModel.image != null?
          Image.network(articleModel.image! ,
          height: 250.0,
          width: double.infinity,
            fit: BoxFit.cover,
          ): const Image(image: AssetImage('assets/240_F_89551596_LdHAZRwz3i4EM4J0NHNHy2hEUYDfXc0j.jpg',)
          ),
        ),
        const SizedBox(
          height: 12.0,
        ),
         Text(
          articleModel.title,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
        ),
        const SizedBox(
          height: 8,
        ) ,
         Text(
           articleModel.subTitle??' ',
           maxLines: 2,
          style: const TextStyle(
          color: Colors.white54,
          fontSize: 10.0,
        ),
        ),
      ],
    );
  }
}
