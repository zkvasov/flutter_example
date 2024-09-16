import '../lost_connection_type.dart';
import 'base_exception.dart';

class LostConnectionException implements BaseException {
  final LostConnectionType lostConnectionType;

  LostConnectionException(
    this.lostConnectionType,
  );
}
