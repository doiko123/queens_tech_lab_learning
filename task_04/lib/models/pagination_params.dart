import 'package:json_annotation/json_annotation.dart';

part 'pagination_params.g.dart';

@JsonSerializable()
// イベント取得におけるページネーション用
class PaginationParams {
  PaginationParams({
    this.start,
    this.order,
    this.count,
  });

  factory PaginationParams.fromJson(Map<String, dynamic> json) =>
      _$PaginationParamsFromJson(json);

  int? start = defaultStartNum; // 検索の開始位置
  int? order = orderByToInt(OrderBy.updatedAt); // 検索結果の表示順
  int? count = requestEventSize; // 取得件数

  Map<String, dynamic> toJson() => _$PaginationParamsToJson(this);
}

enum OrderBy {
  updatedAt, // 更新日時順
  startedAt, // 開催日時順
  createdAt, // 新着順
}

int orderByToInt(OrderBy orderBy) {
  switch (orderBy) {
    case OrderBy.updatedAt:
      return 1;
    case OrderBy.startedAt:
      return 2;
    case OrderBy.createdAt:
      return 3;
  }
}

// リクエスト1回につき取得するイベントの件数
const int requestEventSize = 10;

// デフォルトのstart件数
const int defaultStartNum = 1;
