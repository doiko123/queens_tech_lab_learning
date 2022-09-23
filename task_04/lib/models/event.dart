import 'package:json_annotation/json_annotation.dart';
import 'package:task_04/models/series.dart';

part 'event.g.dart';

@JsonSerializable()
// イベント
class Event {
  Event({
    required this.eventId,
    required this.title,
    required this.catchCopy,
    required this.description,
    required this.eventUrl,
    required this.hashTag,
    required this.startedAt,
    required this.endedAt,
    required this.eventType,
    required this.ownerId,
    required this.ownerNickname,
    required this.ownerDisplayName,
    required this.accepted,
    required this.waiting,
    required this.updatedAt,
    this.limit,
    this.address,
    this.place,
    this.lat,
    this.lon,
    this.series,
  });

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

  int eventId; // イベントID
  String title; // タイトル
  @JsonKey(name: 'catch')
  String catchCopy; // キャッチ
  String description; // 概要(HTML形式)
  String eventUrl; // connpass.com上のURL
  String hashTag; // Twitterのハッシュタグ
  @JsonKey(fromJson: _parseTimestamp)
  DateTime startedAt; // イベント開催日時 (ISO-8601形式)
  @JsonKey(fromJson: _parseTimestamp)
  DateTime endedAt; // イベント終了日時 (ISO-8601形式)
  String eventType; // イベント参加タイプ
  int ownerId; // 管理者のID
  String ownerNickname; // 管理者のニックネーム
  String ownerDisplayName; // 管理者の表示名
  int accepted; // 参加者数
  int waiting; // 補欠者数
  @JsonKey(fromJson: _parseTimestamp)
  DateTime updatedAt; // 更新日時 (ISO-8601形式)
  int? limit; // 定員
  String? address; // 開催場所
  String? place; // 開催会場
  @JsonKey(fromJson: _parseNullableNumString)
  double? lat; // 開催会場の緯度
  @JsonKey(fromJson: _parseNullableNumString)
  double? lon; // 開催会場の経度
  Series? series; // グループ

  Map<String, dynamic> toJson() => _$EventToJson(this);
}

DateTime _parseTimestamp(String value) {
  return DateTime.parse(value).toLocal();
}

double? _parseNullableNumString(String? value) {
  return value != null ? double.tryParse(value) : null;
}
