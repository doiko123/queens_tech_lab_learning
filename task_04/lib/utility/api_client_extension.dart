import 'package:dio/dio.dart';
import 'package:task_04/utility/environment_variables.dart';

// TODO(doiko): Dioのclassを継承するように書き換える
// （Dioのプロパティをオーバーロードする感じで書けるので）
class APIClientExtension {
  static BaseOptions options = BaseOptions(
      // TODO(doiko): header情報を受け取って与えられるようにする
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
