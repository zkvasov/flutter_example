part of 'login_page_cubit.dart';

enum LoginPageStatus {
  idle,
  loading,
  success,
  error,
}

class LoginPageState extends Equatable {
  final LoginPageStatus status;
  final String errorMessage;

  const LoginPageState({
    required this.status,
    this.errorMessage = '',
  });

  @override
  List<Object> get props => [
        status,
        errorMessage,
      ];

  LoginPageState copyWith({
    required LoginPageStatus status,
    String? errorMessage,
    bool? buttonEnabled,
  }) =>
      LoginPageState(
        status: status,
        errorMessage: errorMessage ?? this.errorMessage,
      );
}
