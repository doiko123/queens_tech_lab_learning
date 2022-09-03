import 'package:dio/dio.dart';

class APIClientExtension with DioMixin implements Dio {
  @override
  set options(BaseOptions options) {
    options
      // dart-defineで定義したapiのbaseUrl
      ..baseUrl = const String.fromEnvironment('API_BASE_URL')
      ..headers['content-type'] = 'application/json';
    super.options = options;
  }

  @override
  Interceptors get interceptors {
    final interceptors = super.interceptors
      ..addAll(
        [
          LogInterceptor(
            requestBody: true,
            responseBody: true,
          ),
        ],
      );
    return interceptors;
  }
}
