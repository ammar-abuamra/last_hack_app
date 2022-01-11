// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:last_hack/ViewMoudle/NewsArtivl_VeiwMoudle.dart';
import 'package:last_hack/Widgets/ImageDecorection.dart';

class ArticleDetaeils extends StatelessWidget {
  final NewsArticalVeiwMoudle artical;

  ArticleDetaeils({this.artical});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/aouth.png'),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              constraints: BoxConstraints(maxWidth: 150),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Athour",
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  Text(
                    this.artical.author ?? "Undefine",
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Divider(
                    color: Color(0xff40D876),
                    height: 80,
                    thickness: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Text(
                      "HEADLINE",
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Text(
                this.artical.title,
                style: TextStyle(
                    color: Color(0xff40D876),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                this.artical.publishedAt,
                style: TextStyle(
                    color: Colors.white70, fontSize: 18, letterSpacing: 3),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 200,
                child: ImageDecortion(
                  Imageurl: this.artical.urlToImage,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                this.artical.content,
                style: TextStyle(
                    color: Colors.white, fontSize: 16, letterSpacing: 3),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
