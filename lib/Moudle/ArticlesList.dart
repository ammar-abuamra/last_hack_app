// ignore_for_file: file_names

import 'package:last_hack/Moudle/NewsArticl.dart';

class Articles {
  final List<dynamic> articles;

  Articles({this.articles});

  factory Articles.fromJson(Map<String, dynamic> json) {
    return Articles(articles: json['articles']);
  }
}
