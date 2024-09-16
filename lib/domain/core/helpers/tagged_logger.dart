import 'package:logger/logger.dart';

extension TaggedLoggerExt on Logger {
  Logger of(Object caller) => ofTag('${caller.runtimeType}');
  Logger ofTag(String tag) => TaggedLogger._(tag, this);
}

class TaggedLogger implements Logger {
  final String tag;
  final Logger logger;

  const TaggedLogger._(this.tag, this.logger);

  @override
  void log(
    Level level,
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    logger.log(
      level,
      '[$tag] $message',
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
  }

  @override
  void v(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    log(
      Level.trace,
      message,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
  }

  @override
  void d(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    log(
      Level.debug,
      message,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
  }

  @override
  void i(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    log(
      Level.info,
      message,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
  }

  @override
  void w(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    log(
      Level.warning,
      message,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
  }

  @override
  void e(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    log(
      Level.error,
      message,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
  }

  @override
  void f(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    log(
      Level.fatal,
      message,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
  }

  @override
  Future<void> close() async {}

  @override
  bool isClosed() => false;

  @override
  void t(message, {DateTime? time, Object? error, StackTrace? stackTrace}) {
    log(
      Level.trace,
      message,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
  }

  @override
  void wtf(message, {DateTime? time, Object? error, StackTrace? stackTrace}) {
    log(
      Level.fatal,
      message,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
  }

  @override
  Future<void> get init {
    return Logger().init;
  }
}
