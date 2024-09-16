import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/auth/user_session.dart';
import '../../../domain/use_cases/auth/get_user_session_use_case.dart';
import '../../../domain/use_cases/auth/login_use_case.dart';
import '../../core/bloc/base_cubit.dart';

part 'login_page_state.dart';

@injectable
class LoginPageCubit extends BaseCubit<LoginPageState> {
  final GetUserSessionUseCase _getUserSessionUseCase;
  final LoginUseCase _loginUseCase;

  LoginPageCubit(
    this._getUserSessionUseCase,
    this._loginUseCase,
  ) : super(const LoginPageState(
          status: LoginPageStatus.loading,
        )) {
    _init();
  }

  @override
  void handleError(String errorMessage) {
    emit(state.copyWith(
      status: LoginPageStatus.error,
      errorMessage: errorMessage,
    ));
  }

  Future<void> _init() {
    return makeErrorHandledCall(() async {
      final session = await _getUserSessionUseCase.call();
      if (session == null) {
        emit(state.copyWith(status: LoginPageStatus.idle));
      } else {
        emit(state.copyWith(status: LoginPageStatus.success));
      }
    });
  }

  Future<void> login({
    required String email,
    required String password,
  }) {
    return makeErrorHandledCall(() async {
      await _loginUseCase.call(
        UserSession(
          email: email,
          password: password,
        ),
      );
      emit(state.copyWith(status: LoginPageStatus.success));
    });
  }
}
