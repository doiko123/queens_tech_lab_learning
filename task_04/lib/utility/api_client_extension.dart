import 'package:dio/dio.dart';

// dart-defineで定義したapiのbaseUrl
const apiBaseUrl = String.fromEnvironment('API_BASE_URL');

class APIClientExtension with DioMixin implements Dio {
  APIClientExtension() {
    options = BaseOptions(
      // TODO(doiko): header情報を受け取って与えられるようにする
      baseUrl: apiBaseUrl,
      validateStatus: (status) {
        return status! < 300;
      },
    );
    interceptors.addAll(
      [
        LogInterceptor(
          requestBody: true,
          responseBody: true,
        ),
      ],
    );
  }
}
