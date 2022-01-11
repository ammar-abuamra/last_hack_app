// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:last_hack/ViewMoudle/NewsArticle_list_vmodel.dart';
import 'package:last_hack/ViewMoudle/NewsArtivl_VeiwMoudle.dart';
import 'package:provider/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../Widgets/NewsGrid.dart';

class NewsScreen extends StatefulWidget {
  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Provider.of<NewsArticleListVmodel>(context, listen: false)
        .fetchtopheadline();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var ListviewMoudle = Provider.of<NewsArticleListVmodel>(context);
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[Icon(Icons.language)],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Last  \n",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
                TextSpan(
                  text: " HACK ",
                  style: TextStyle(
                      color: Color(0xff40D876),
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                )
              ])),
            ),
            Divider(
              color: Color(0xff40D876),
              height: 40,
              thickness: 8,
              indent: 12,
              endIndent: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 15, bottom: 15),
              child: Text(
                "HeadLine",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff40D876),
                    fontSize: 20),
              ),
            ),
            Expanded(
                child: NewsGrid(
              articles: ListviewMoudle.articles,
            )),
          ],
        ),
      ),
    );
  }
}
