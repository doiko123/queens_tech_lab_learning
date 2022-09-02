import 'package:task_04/models/event.dart';
import 'package:task_04/models/events_data.dart';
import 'package:task_04/utility/api_client_extension.dart';

class APIClient extends APIClientExtension {
  final apiClient = APIClient();
  // イベント一覧を取得
  // GET /events
  Future<List<Event>> getEvents() async {
    final response = await apiClient.get<EventsData>(
      'event',
    );
    final data = EventsData.fromJson(
      response.data! as Map<String, dynamic>,
    );

    return data.events.toList();
  }
}
