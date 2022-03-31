import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:last_hack/Services/NewsService.dart';
import 'package:provider/provider.dart';

import 'Screens/NesScreen.dart';
import 'ViewMoudle/NewsArticle_list_vmodel.dart';
import 'ViewMoudle/NewsArtivl_VeiwMoudle.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => NewsArticleListVmodel(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.black54,
          appBarTheme: AppBarTheme(
              iconTheme: IconThemeData(
                color: Color(0xff40D876),
              ),
              color: Colors.black54,
              elevation: 0,
              titleTextStyle: TextStyle(
                  color: Color(0xff40D876), fontWeight: FontWeight.bold),
              actionsIconTheme: IconThemeData(
                color: Color(0xff40D876),
              )),
        ),
        home: NewsScreen(),
      ),
    );
  }
}
