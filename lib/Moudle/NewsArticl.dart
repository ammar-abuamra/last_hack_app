// ignore_for_file: file_names

class NewsArtical {
  final String title;
  final String author;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;
  final String content;

  NewsArtical(
      {this.urlToImage,
      this.publishedAt,
      this.content,
      this.title,
      this.author,
      this.description,
      this.url});

  factory NewsArtical.fromJson(Map<String, dynamic> json) {
    return NewsArtical(
        title: json['title'],
        author: json['author'],
        description: json['description'],
        url: json['url'],
        content: json['content'],
        publishedAt: json['publishedAt'],
        urlToImage: json['urlToImage']);
  }
}
