import 'package:dio/dio.dart';
import 'package:task_04/models/event.dart';
import 'package:task_04/models/events_data.dart';
import 'package:task_04/utility/api_client_extension.dart';

class APIClient extends APIClientExtension {
  // イベント一覧を取得
  // GET /events
  Future<List<Event>?> getEvents({
    required String keyword,
  }) async {
    final apiClient = APIClient()..options = BaseOptions();
    final queryParameters = <String, String>{'keyword': keyword};
    final response = await apiClient.get<dynamic>(
      'event',
      queryParameters: queryParameters,
    );
    final data = EventsData.fromJson(
      response.data! as Map<String, dynamic>,
    );
    return data.events.toList();
  }
}
