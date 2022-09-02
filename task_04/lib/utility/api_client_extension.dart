import 'package:dio/dio.dart';
import 'package:task_04/utility/environment_variables.dart';


class APIClientExtension with DioMixin implements Dio {
  APIClientExtension() {
    options = BaseOptions(
      // TODO(doiko): header情報を受け取って与えられるようにする
      baseUrl: EnvironmentVariables.connpassBaseURL,
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
