import 'package:json_annotation/json_annotation.dart';
import 'package:task_04/models/event.dart';

part 'events_data.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
)
// イベント情報（connpass イベントサーチAPIのレスポンス）
class EventsData {
  EventsData({
    required this.resultsReturned,
    required this.resultsAvailable,
    required this.resultsStart,
    required this.events,
  });

  factory EventsData.fromJson(Map<String, dynamic> json) =>
      _$EventsDataFromJson(json);

  int resultsReturned; // 含まれる検索結果の件数
  int resultsAvailable; // 検索結果の総件数
  int resultsStart; // 検索の開始位置
  List<Event> events; // 検索結果のイベントリスト

  Map<String, dynamic> toJson() => _$EventsDataToJson(this);
}
