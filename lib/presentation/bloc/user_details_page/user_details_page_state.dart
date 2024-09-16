// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'user_details_page_cubit.dart';

enum UserDetailsPageStatus {
  init,
  loading,
  success,
  error,
}

class UserDetailsPageState extends Equatable {
  final UserDetailsPageStatus status;
  final String errorMessage;
  final User? user;

  const UserDetailsPageState({
    required this.status,
    this.errorMessage = '',
    this.user,
  });

  @override
  List<Object?> get props => [
        status,
        errorMessage,
        user,
      ];

  UserDetailsPageState copyWith({
    required UserDetailsPageStatus status,
    String? errorMessage,
    User? user,
  }) {
    return UserDetailsPageState(
      status: status,
      errorMessage: errorMessage ?? this.errorMessage,
      user: user ?? this.user,
    );
  }
}
