import 'package:flutter/material.dart';
import 'package:task_04/models/event.dart';
import 'package:task_04/utility/api_client.dart';

class EventStore extends ChangeNotifier {
  List<Event> _events = [];
  List<Event> get events {
    return _events;
  }

  final APIClient _apiClient = APIClient();

  Future<void> getEvents({
    required String keyword,
  }) async {
    print(_events);
    final response = await _apiClient.getEvents(
      keyword: keyword,
    );
    _events = response ?? [];
    print(_events);
    // 変更を通知する
    notifyListeners();
  }
}
