import '../entities/users/user.dart';

abstract class UsersRepository {
  Future<List<User>> getUsers();
  Future<User> getUserDetails(int userId);
}
