// ignore_for_file: file_names

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:last_hack/Moudle/NewsArticl.dart';
import 'package:last_hack/Screens/NewsArticleDetailes.dart';
import 'package:last_hack/ViewMoudle/NewsArtivl_VeiwMoudle.dart';

import 'ImageDecorection.dart';

class NewsGrid extends StatelessWidget {
  final List<NewsArticalVeiwMoudle> articles;

  NewsGrid({this.articles});

  void _GoTODEtailScreen(context, article) {
    Navigator.push(context, MaterialPageRoute(builder: (_) {
      return ArticleDetaeils(artical: article);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (_, index) {
          var article = articles[index];
          return InkWell(
            onTap: () {
              _GoTODEtailScreen(context, article);
            },
            child: GridTile(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: ImageDecortion(
                  Imageurl: article.urlToImage,
                ),
              ),
              footer: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  article.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xff40D876)),
                ),
              ),
            ),
          );
        },
        itemCount: this.articles.length);
  }
}
