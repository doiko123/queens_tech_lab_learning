import 'package:flutter/material.dart';
import 'package:task_04/models/event.dart';
import 'package:task_04/models/pagination_params.dart';
import 'package:task_04/utility/api_client.dart';

class EventStore extends ChangeNotifier {
  List<Event> events = [];

  int _fetchedEventSize() {
    return events.isNotEmpty ? events.length : 0;
  }

  final APIClient _apiClient = APIClient();

  Future<void> fetchEvents({
    required String keyword,
  }) async {
    final response = await _apiClient.getEvents(
      keyword: keyword,
      pagination: PaginationParams(
        start: _fetchedEventSize() + 1,
        order: orderByToInt(OrderBy.updatedAt),
        count: requestEventSize,
      ),
    );
    events.addAll(response!);
    // 変更を通知する
    notifyListeners();
  }
}
