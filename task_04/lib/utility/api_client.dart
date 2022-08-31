import 'package:dio/dio.dart';
import 'package:task_04/utility/environment_variables.dart';

class APIClientExtension {
  static BaseOptions options = BaseOptions(
      baseUrl: EnvironmentVariables.connpassBaseURL,
      validateStatus: (status) {
        return status! < 300;
      });

  Dio dio = Dio(options);

  APIClientExtension() {
    dio.interceptors.addAll([
      LogInterceptor(
        requestBody: true,
        responseBody: true,
      ),
    ]);
  }
}

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
