import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/users/user.dart';
import '../../../domain/use_cases/users/get_user_details_use_case.dart';
import '../../core/bloc/base_cubit.dart';

part 'user_details_page_state.dart';

@injectable
class UserDetailsPageCubit extends BaseCubit<UserDetailsPageState> {
  final GetUserDetailsUseCase _getUserDetailsUseCase;
  final int _userId;

  UserDetailsPageCubit(
    this._getUserDetailsUseCase,
    @factoryParam this._userId,
  ) : super(const UserDetailsPageState(
          status: UserDetailsPageStatus.loading,
        )) {
    _init();
  }

  @override
  void handleError(String errorMessage) {
    emit(state.copyWith(
      status: UserDetailsPageStatus.error,
      errorMessage: errorMessage,
    ));
  }

  Future<void> _init() => makeErrorHandledCall(() async {
        final user = await _getUserDetailsUseCase.call(_userId);
        emit(state.copyWith(
          status: UserDetailsPageStatus.success,
          user: user,
        ));
      });
}
