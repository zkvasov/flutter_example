import 'package:injectable/injectable.dart';

import '../../data/repositories/auth_repository_impl.dart';
import '../../data/repositories/users_repository_impl.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../domain/repositories/users_repository.dart';
import '../di.dart';

@module
abstract class RepositoriesModule {
  @lazySingleton
  AuthRepository chatLocalDataSourceImpl() => AuthRepositoryImpl(sl());

  @lazySingleton
  UsersRepository usersRepositoryImpl() => UsersRepositoryImpl(sl(), sl());
}
