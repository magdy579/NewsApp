
import 'package:flutter/material.dart';
import 'package:news_app/servies/news_serves.dart';
import 'package:news_app/view/newsApp.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: newsApp(),

    );
  }
}

