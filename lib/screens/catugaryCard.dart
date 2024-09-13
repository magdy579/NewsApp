import 'package:flutter/material.dart';
import 'package:news_app/models/category_models.dart';
import 'package:news_app/screens/catugray_list_view.dart';

import '../view/bussines_view.dart';


class catugary_card extends StatelessWidget {
final category_Models category;

  const catugary_card({Key? key, required this.category}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() {
        Navigator.of(context).push(
          MaterialPageRoute
            (builder: (context) {                                                 
            return bussinesCatugary(
              category: category.categoryName,
            );
          },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Container(
          height: 150,
          width: 200,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.blueAccent,
            image: DecorationImage(
              fit:  BoxFit.fill,
              image:
              AssetImage(category.image
              ),
            ),

          ),

          child:  Center(
            child:  Text(
              category.categoryName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
