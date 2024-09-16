import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/users/user.dart';
import '../../../domain/use_cases/users/get_users_use_case.dart';
import '../../core/bloc/base_cubit.dart';

part 'users_page_state.dart';

@injectable
class UsersPageCubit extends BaseCubit<UsersPageState> {
  final GetUsersUseCase _getUsersUseCase;

  UsersPageCubit(
    this._getUsersUseCase,
  ) : super(const UsersPageState(
          status: UsersPageStatus.loading,
        )) {
    _init();
  }

  @override
  void handleError(String errorMessage) {
    emit(state.copyWith(
      status: UsersPageStatus.error,
      errorMessage: errorMessage,
    ));
  }

  Future<void> _init() => makeErrorHandledCall(() async {
        final users = await _getUsersUseCase.call();
        emit(state.copyWith(
          status: UsersPageStatus.success,
          users: users,
        ));
      });
}
