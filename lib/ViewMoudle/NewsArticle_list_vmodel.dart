// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:last_hack/Moudle/NewsArticl.dart';
import 'package:last_hack/Services/NewsService.dart';
import 'package:last_hack/ViewMoudle/NewsArtivl_VeiwMoudle.dart';

enum LoadingStatus {
  completed,
  searching,
  empty,
}

class NewsArticleListVmodel with ChangeNotifier {
  LoadingStatus loadingstatues = LoadingStatus.empty;
  List<NewsArticalVeiwMoudle> articles = <NewsArticalVeiwMoudle>[];

  void fetchtopheadline() async {
    List<NewsArtical> newsArticle = await WebService().fetchTopheadline();
    loadingstatues = LoadingStatus.searching;
    notifyListeners();

    this.articles =
        newsArticle.map((e) => NewsArticalVeiwMoudle(artical: e)).toList();

    if (this.articles.isEmpty) {
      this.loadingstatues = LoadingStatus.empty;
    } else {
      this.loadingstatues = LoadingStatus.completed;
    }
    notifyListeners();
  }
}
