part of 'users_page_cubit.dart';

enum UsersPageStatus {
  init,
  loading,
  success,
  error,
}

class UsersPageState extends Equatable {
  final UsersPageStatus status;
  final String errorMessage;
  final List<User> users;

  const UsersPageState({
    required this.status,
    this.errorMessage = '',
    this.users = const [],
  });

  @override
  List<Object> get props => [
        status,
        errorMessage,
        users,
      ];

  UsersPageState copyWith({
    required UsersPageStatus status,
    String? errorMessage,
    List<User>? users,
  }) =>
      UsersPageState(
        status: status,
        errorMessage: errorMessage ?? this.errorMessage,
        users: users ?? this.users,
      );
}
