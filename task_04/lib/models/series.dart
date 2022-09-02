import 'package:json_annotation/json_annotation.dart';

part 'series.g.dart';

@JsonSerializable()
// グループ
class Series {
  Series({
    required this.id,
    required this.title,
    required this.url,
  });

  factory Series.fromJson(Map<String, dynamic> json) => _$SeriesFromJson(json);

  int id; // グループID
  String title; // グループタイトル
  String url; // グループのconnpass.com 上のURL

  Map<String, dynamic> toJson() => _$SeriesToJson(this);
}
