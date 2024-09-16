import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_example/domain/core/helpers/tagged_logger.dart';
import 'package:logger/logger.dart';

import '../../../di/di.dart';
import '../../../domain/core/error/models/exceptions/api_exception.dart';
import '../../../domain/core/error/models/exceptions/application_exception.dart';
import '../../../domain/core/error/models/exceptions/base_exception.dart';
import '../../../domain/core/error/models/exceptions/lost_connection_exception.dart';
import '../../../domain/core/error/models/lost_connection_type.dart';

abstract class BaseRepository {
  Logger get logger => sl<Logger>().of(this);

  Future<T> makeErrorParsedCall<T>(AsyncValueGetter<T> callback) async {
    try {
      return await callback();
    } on DioException catch (exception) {
      throw await _getProcessedDioError(exception);
    } on PlatformException {
      rethrow;
    } on SocketException {
      throw LostConnectionException(
        LostConnectionType.noInternetConnection,
      );
    } on ApiException {
      rethrow;
    } on ApplicationException {
      rethrow;
    } catch (exception, stackTrace) {
      logger.e(
        'Mobile client error has occurred',
        error: exception,
        stackTrace: stackTrace,
      );

      throw const ApplicationException('Mobile client error has occurred');
    }
  }

  Future<BaseException> _getProcessedDioError(
    DioException exception,
  ) async {
    try {
      await InternetAddress.lookup('example.com');
    } on SocketException catch (_) {
      return LostConnectionException(
        LostConnectionType.noInternetConnection,
      );
    }

    return const ApiException(
      message: "Couldn't contact the server...",
    );
  }
}
