// ignore_for_file: file_names

import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';

class ImageDecortion extends StatelessWidget {
  String Imageurl;

  ImageDecortion({this.Imageurl});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: Imageurl,
      imageBuilder: (context, imageProvider) {
        return Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              )),
        );
      },
      placeholder: (context, url) {
        return Center(child: CircularProgressIndicator());
      },
      errorWidget: (context, url, error) {
        return Container();
      },
    );
  }
}
