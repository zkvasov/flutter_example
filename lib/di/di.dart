import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';

/// service locator
final sl = GetIt.instance;

@InjectableInit(
  initializerName: r'$configDI',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configDI() async {
  $configDI(sl);
}
