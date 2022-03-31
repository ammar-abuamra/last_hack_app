// ignore_for_file: file_names

import 'dart:convert';

import 'package:last_hack/Moudle/ArticlesList.dart';
import 'package:last_hack/Moudle/NewsArticl.dart';
import 'package:dio/dio.dart';

class WebService {
  var dio = Dio();

  Future<List<NewsArtical>> fetchTopheadline() async {
    String url =
        "https://newsapi.org/v2/everything?q=apple&from=2022-03-30&to=2022-03-30&sortBy=popularity&apiKey=68181cc216be48d7b50826d77825922d";
    final resbonse = await dio.get(url);

    if (resbonse.statusCode == 200) {
      final result = resbonse.data;
      Iterable list = result["articles"];
      return list.map((e) => NewsArtical.fromJson(e)).toList();
    } else {
      throw Exception("error in geting data top head line");
    }
  }
}
