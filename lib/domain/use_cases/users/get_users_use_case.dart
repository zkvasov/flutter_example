import 'package:injectable/injectable.dart';

import '../../entities/users/user.dart';
import '../../repositories/users_repository.dart';

@lazySingleton
class GetUsersUseCase {
  final UsersRepository _usersRepository;

  GetUsersUseCase(this._usersRepository);

  Future<List<User>> call() => _usersRepository.getUsers();
}
