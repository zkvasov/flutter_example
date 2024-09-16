import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ApiLogInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    log("[Request] ${options.method} ${options.uri}");
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log("[Response] Status: ${response.statusCode}");
    log("[Response] Data: ${response.data}");
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    log("[Error] Code: ${err.response?.statusCode}");
    log("[Error] Message: ${err.message}");
    super.onError(err, handler);
  }
}
