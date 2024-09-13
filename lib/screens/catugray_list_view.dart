import 'package:flutter/material.dart';
import 'package:news_app/models/category_models.dart';
import 'package:news_app/screens/catugaryCard.dart';
class catugarys_list_view extends StatelessWidget {
  const catugarys_list_view({
    Key? key,
  }) : super(key: key);
  final List<category_Models> categors = const[
  category_Models(categoryName: 'Business', image: 'assets/busnies.jpg'),
  category_Models(categoryName: 'Sports', image: 'assets/dmitry-osipenko-v37kr3k_G3M-unsplash.jpg'),
  category_Models(categoryName: 'Entertainment', image: 'assets/entertaiment.png'),
  category_Models(categoryName: 'General', image: 'assets/genalr.jpg'),
  category_Models(categoryName: 'health', image: 'assets/health.png'),
  category_Models(categoryName: 'Science', image: 'assets/science.png'),
  category_Models(categoryName: 'Technology', image: 'assets/technology.jpeg'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categors.length,
          itemBuilder: (context, index) {
            return  catugary_card(
            category: categors[index],
            );
          }),
    );
  }
}
