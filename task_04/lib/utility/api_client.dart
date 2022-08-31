import 'package:task_04/utility/api_client_extension.dart';

class APIClient extends APIClientExtension {
  // イベント一覧を取得を取得
  // GET /events
  Future<List<Event>> listEvents() async {
    final response = await dio.get(
      'event',
    );
    return (response.data['events'] as List)
        .map((index) => Event.fromJson(index))
        .toList();
  }
}
