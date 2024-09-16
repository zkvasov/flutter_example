import 'package:injectable/injectable.dart';
import 'package:flutter_example/data/repositories/auth_repository_impl.dart';
import 'package:flutter_example/domain/repositories/auth_repository.dart';

import '../../data/repositories/users_repository_impl.dart';
import '../../domain/repositories/users_repository.dart';
import '../di.dart';

@module
abstract class RepositoriesModule {
  @lazySingleton
  AuthRepository chatLocalDataSourceImpl() {
    return AuthRepositoryImpl(sl());
  }

  @lazySingleton
  UsersRepository usersRepositoryImpl() {
    return UsersRepositoryImpl(sl(), sl());
  }
}
