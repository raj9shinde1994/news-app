import 'package:json_annotation/json_annotation.dart';

part 'source.g.dart';

@JsonSerializable()
class Source {
  @JsonKey(name: 'id')
  String? id;
  @JsonKey(name: 'name')
  String? name;

  Source({this.id, this.name});

  // 7
  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);

  // 8
  Map<String, dynamic> toJson() => _$SourceToJson(this);

 /* Source.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }*/
}