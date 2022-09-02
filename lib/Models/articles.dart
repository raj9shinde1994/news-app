import 'package:news_api_app/Models/source.dart';
import 'package:json_annotation/json_annotation.dart';

part 'articles.g.dart';

@JsonSerializable()
class Articles {
  @JsonKey(name: 'source')
  Source? source;
  @JsonKey(name: 'author')
  String? author;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'url')
  String? url;
  @JsonKey(name: 'urlToImage')
  String? urlToImage;
  @JsonKey(name: 'publishedAt')
  String? publishedAt;
  @JsonKey(name: 'content')
  String? content;

  Articles(
      {this.source,
        this.author,
        this.title,
        this.description,
        this.url,
        this.urlToImage,
        this.publishedAt,
        this.content});

  // 7
  factory Articles.fromJson(Map<String, dynamic> json) => _$ArticlesFromJson(json);

  // 8
  Map<String, dynamic> toJson() => _$ArticlesToJson(this);


/*  Articles.fromJson(Map<String, dynamic> json) {
    source =
    json['source'] != null ?  Source.fromJson(json['source']) : null;
    author = json['author'];
    title = json['title'];
    description = json['description'];
    url = json['url'];
    urlToImage = json['urlToImage'];
    publishedAt = json['publishedAt'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    if (source != null) {
      data['source'] = source!.toJson();
    }
    data['author'] = author;
    data['title'] = title;
    data['description'] = description;
    data['url'] = this.url;
    data['urlToImage'] = this.urlToImage;
    data['publishedAt'] = this.publishedAt;
    data['content'] = this.content;
    return data;
  }*/
}