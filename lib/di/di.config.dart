// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;

import '../data/core/api/interceptors/api_log_interceptor.dart' as _i290;
import '../data/data_sources/api/api_client.dart' as _i30;
import '../data/data_sources/storage/dao/user_session_dao.dart' as _i657;
import '../data/data_sources/storage/dao/users_dao.dart' as _i867;
import '../data/data_sources/storage/local_storage.dart' as _i1022;
import '../domain/repositories/auth_repository.dart' as _i800;
import '../domain/repositories/users_repository.dart' as _i56;
import '../domain/use_cases/auth/get_user_session_use_case.dart' as _i267;
import '../domain/use_cases/auth/login_use_case.dart' as _i132;
import '../domain/use_cases/users/get_user_details_use_case.dart' as _i670;
import '../domain/use_cases/users/get_users_use_case.dart' as _i868;
import '../presentation/bloc/login_page/login_page_cubit.dart' as _i86;
import '../presentation/bloc/user_details_page/user_details_page_cubit.dart'
    as _i909;
import '../presentation/bloc/users_page/users_page_cubit.dart' as _i865;
import '../presentation/core/router/app_auto_router.dart' as _i242;
import '../presentation/core/router/app_router.dart' as _i223;
import 'modules/api_module.dart' as _i145;
import 'modules/auto_router_module.dart' as _i448;
import 'modules/logger_module.dart' as _i205;
import 'modules/repositories_module.dart' as _i885;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $configDI(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final appRouterModule = _$AppRouterModule();
  final loggerModule = _$LoggerModule();
  final repositoriesModule = _$RepositoriesModule();
  final apiModule = _$ApiModule();
  gh.singleton<_i242.AppAutoRouter>(() => appRouterModule.appAutoRouter());
  gh.singleton<_i974.Logger>(() => loggerModule.logger());
  gh.singleton<_i1022.LocalStorage>(() => _i1022.LocalStorage());
  gh.lazySingleton<_i800.AuthRepository>(
      () => repositoriesModule.chatLocalDataSourceImpl());
  gh.lazySingleton<_i56.UsersRepository>(
      () => repositoriesModule.usersRepositoryImpl());
  gh.lazySingleton<_i361.Dio>(() => apiModule.apiDio());
  gh.lazySingleton<_i290.ApiLogInterceptor>(() => _i290.ApiLogInterceptor());
  gh.singleton<_i223.AppRouter>(
      () => _i223.AppRouter(gh<_i242.AppAutoRouter>()));
  gh.singleton<_i30.ApiClient>(() => _i30.ApiClient(gh<_i361.Dio>()));
  gh.lazySingleton<_i867.UsersDao>(
      () => _i867.UsersDao(gh<_i1022.LocalStorage>()));
  gh.lazySingleton<_i657.UserSessionDao>(
      () => _i657.UserSessionDao(gh<_i1022.LocalStorage>()));
  gh.lazySingleton<_i132.LoginUseCase>(
      () => _i132.LoginUseCase(gh<_i800.AuthRepository>()));
  gh.lazySingleton<_i267.GetUserSessionUseCase>(
      () => _i267.GetUserSessionUseCase(gh<_i800.AuthRepository>()));
  gh.lazySingleton<_i868.GetUsersUseCase>(
      () => _i868.GetUsersUseCase(gh<_i56.UsersRepository>()));
  gh.lazySingleton<_i670.GetUserDetailsUseCase>(
      () => _i670.GetUserDetailsUseCase(gh<_i56.UsersRepository>()));
  gh.factory<_i865.UsersPageCubit>(
      () => _i865.UsersPageCubit(gh<_i868.GetUsersUseCase>()));
  gh.factory<_i86.LoginPageCubit>(() => _i86.LoginPageCubit(
        gh<_i267.GetUserSessionUseCase>(),
        gh<_i132.LoginUseCase>(),
      ));
  gh.factoryParam<_i909.UserDetailsPageCubit, int, dynamic>((
    _userId,
    _,
  ) =>
      _i909.UserDetailsPageCubit(
        gh<_i670.GetUserDetailsUseCase>(),
        _userId,
      ));
  return getIt;
}

class _$AppRouterModule extends _i448.AppRouterModule {}

class _$LoggerModule extends _i205.LoggerModule {}

class _$RepositoriesModule extends _i885.RepositoriesModule {}

class _$ApiModule extends _i145.ApiModule {}
