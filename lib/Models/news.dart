
import 'package:json_annotation/json_annotation.dart';
import 'package:news_api_app/Models/articles.dart';

part 'news.g.dart';

@JsonSerializable()
class News {
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'totalResults')
  int? totalResults;
  @JsonKey(name: 'articles')
  List<Articles>? articles;

  News({this.status, this.totalResults, this.articles});

  // 7
  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);

  // 8
  Map<String, dynamic> toJson() => _$NewsToJson(this);

/*  News.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    totalResults = json['totalResults'];
    if (json['articles'] != null) {
      articles = <Articles>[];
      json['articles'].forEach((v) {
        articles!.add( Articles.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['status'] = status;
    data['totalResults'] = totalResults;
    if (articles != null) {
      data['articles'] = articles!.map((v) => v.toJson()).toList();
    }
    return data;
  }*/
}




