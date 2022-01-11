// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:last_hack/Moudle/NewsArticl.dart';
import 'package:last_hack/Services/NewsService.dart';
import 'package:provider/provider.dart';

class NewsArticalVeiwMoudle extends ChangeNotifier {
  NewsArtical _newsArticle;

  NewsArticalVeiwMoudle({NewsArtical artical}) : _newsArticle = artical;

  String get title => _newsArticle.title;

  String get author => _newsArticle.author;

  String get description => _newsArticle.description;

  String get url => _newsArticle.url;

  String get urlToImage => _newsArticle.urlToImage;

  String get publishedAt {
    final dattime = DateFormat("yyyy-mm-ddTHH:mm:ssZ")
        .parse(_newsArticle.publishedAt, true);
    return DateFormat.yMMMMEEEEd('en-us').format(dattime).toString();
  }

  String get content => _newsArticle.content;
}
