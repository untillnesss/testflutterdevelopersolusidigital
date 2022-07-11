// To parse this JSON data, do
//
//     final newsResponseModel = newsResponseModelFromMap(jsonString);

import 'dart:convert';

class NewsResponseModel {
  NewsResponseModel({
    this.status,
    this.totalResults,
    this.articles,
  });

  String? status;
  int? totalResults;
  List<Article>? articles;

  NewsResponseModel copyWith({
    String? status,
    int? totalResults,
    List<Article>? articles,
  }) =>
      NewsResponseModel(
        status: status ?? this.status,
        totalResults: totalResults ?? this.totalResults,
        articles: articles ?? this.articles,
      );

  factory NewsResponseModel.fromJson(String str) =>
      NewsResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory NewsResponseModel.fromMap(Map<String, dynamic> json) =>
      NewsResponseModel(
        status: json["status"],
        totalResults:
            json["totalResults"],
        articles: json["articles"] == null
            ? null
            : List<Article>.from(
                json["articles"].map((x) => Article.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "totalResults": totalResults,
        "articles": articles == null
            ? null
            : List<dynamic>.from(articles!.map((x) => x.toMap())),
      };
}

class Article {
  Article({
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  Source? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  DateTime? publishedAt;
  String? content;

  Article copyWith({
    Source? source,
    String? author,
    String? title,
    String? description,
    String? url,
    String? urlToImage,
    DateTime? publishedAt,
    String? content,
  }) =>
      Article(
        source: source ?? this.source,
        author: author ?? this.author,
        title: title ?? this.title,
        description: description ?? this.description,
        url: url ?? this.url,
        urlToImage: urlToImage ?? this.urlToImage,
        publishedAt: publishedAt ?? this.publishedAt,
        content: content ?? this.content,
      );

  factory Article.fromJson(String str) => Article.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Article.fromMap(Map<String, dynamic> json) => Article(
        source: json["source"] == null ? null : Source.fromMap(json["source"]),
        author: json["author"],
        title: json["title"],
        description: json["description"],
        url: json["url"],
        urlToImage: json["urlToImage"],
        publishedAt: json["publishedAt"] == null
            ? null
            : DateTime.parse(json["publishedAt"]),
        content: json["content"],
      );

  Map<String, dynamic> toMap() => {
        "source": source == null ? null : source!.toMap(),
        "author": author,
        "title": title,
        "description": description,
        "url": url,
        "urlToImage": urlToImage,
        "publishedAt":
            publishedAt == null ? null : publishedAt!.toIso8601String(),
        "content": content,
      };
}

class Source {
  Source({
    this.id,
    this.name,
  });

  String? id;
  String? name;

  Source copyWith({
    String? id,
    String? name,
  }) =>
      Source(
        id: id ?? this.id,
        name: name ?? this.name,
      );

  factory Source.fromJson(String str) => Source.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Source.fromMap(Map<String, dynamic> json) => Source(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
      };
}
