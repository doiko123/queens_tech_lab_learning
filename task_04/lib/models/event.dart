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
    required this.limit,
    required this.eventType,
    required this.series,
    required this.ownerId,
    required this.ownerNickname,
    required this.ownerDisplayName,
    required this.accepted,
    required this.waiting,
    required this.updatedAt,
    this.address,
    this.place,
    this.lat,
    this.lon,
  });

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

  int eventId; // イベントID
  String title; // タイトル
  @JsonKey(name: 'catch')
  String catchCopy; // キャッチ
  String description; // 概要(HTML形式)
  String eventUrl; // connpass.com上のURL
  String hashTag; // Twitterのハッシュタグ
  String startedAt; // イベント開催日時 (ISO-8601形式) -> DateTime？
  String endedAt; // 	イベント終了日時 (ISO-8601形式) -> DateTime？
  int limit; // 定員
  String eventType; // イベント参加タイプ
  Series series; // グループ
  int ownerId; // 管理者のID
  String ownerNickname; // 管理者のニックネーム
  String ownerDisplayName; // 管理者の表示名
  int accepted; // 参加者数
  int waiting; // 補欠者数
  String updatedAt; // 更新日時 (ISO-8601形式) -> DateTime？
  String? address; // 開催場所
  String? place; // 開催会場
  double? lat; // 開催会場の緯度
  double? lon; // 開催会場の経度

  Map<String, dynamic> toJson() => _$EventToJson(this);
}
