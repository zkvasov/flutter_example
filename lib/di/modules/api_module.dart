import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../data/core/api/api_constants.dart';
import '../../data/core/api/interceptors/api_log_interceptor.dart';

@module
abstract class ApiModule {
  @lazySingleton
  Dio apiDio() => Dio()
    ..options.sendTimeout = const Duration(seconds: 10)
    ..options.baseUrl = ApiConstants.baseUrl
    ..interceptors.add(ApiLogInterceptor());
}
