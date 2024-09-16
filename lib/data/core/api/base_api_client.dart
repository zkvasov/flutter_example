import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'models/jsonable.dart';

abstract class BaseApiClient {
  final Dio dio;

  BaseApiClient(this.dio);

  @protected
  Future<T> get<T>({
    required String path,
    required T Function(Map<String, dynamic>) converter,
    Jsonable? requestData,
  }) async {
    final response = await dio.get(
      path,
      queryParameters: requestData?.toJson(),
    );

    return converter(response.data as Map<String, dynamic>);
  }

  @protected
  Future<List<T>> getList<T>({
    required String path,
    required T Function(Map<String, dynamic>) converter,
    Jsonable? requestData,
  }) async {
    final response = await dio.get(
      path,
      queryParameters: requestData?.toJson(),
    );

    final value = List.from(response.data as List)
        .map((item) => converter(item as Map<String, dynamic>))
        .toList();
    return value;
  }
}
