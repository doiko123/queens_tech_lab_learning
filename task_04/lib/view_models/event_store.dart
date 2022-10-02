import 'package:flutter/material.dart';
import 'package:task_04/models/event.dart';
import 'package:task_04/models/pagination_params.dart';
import 'package:task_04/utility/api_client.dart';

class EventStore extends ChangeNotifier {
  List<Event> events = [];

  int nextStartNum() {
    final fetchedEventSize = events.isNotEmpty ? events.length : 0;
    return fetchedEventSize + defaultStartNum;
  }

  final APIClient _apiClient = APIClient();

  Future<void> fetchEvents({
    required String keyword,
    bool isRefresh = false,
  }) async {
    final startNum = isRefresh ? defaultStartNum : nextStartNum();
    final response = await _apiClient.getEvents(
      keyword: keyword,
      pagination: PaginationParams(
        start: startNum,
        order: orderByToInt(OrderBy.startedAt),
        count: requestEventSize,
      ),
    );
    if (isRefresh) {
      events = response ?? [];
    } else {
      events.addAll(response!);
    }
    // 変更を通知する
    notifyListeners();
  }
}
