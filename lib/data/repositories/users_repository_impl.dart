import 'package:flutter_example/data/data_sources/api/api_client.dart';
import 'package:flutter_example/data/data_sources/storage/dao/users_dao.dart';
import 'package:flutter_example/domain/entities/users/user.dart';
import 'package:flutter_example/domain/repositories/users_repository.dart';

import '../core/repository/base_repository.dart';
import '../data_sources/models/users/user_dto.dart';

class UsersRepositoryImpl extends BaseRepository implements UsersRepository {
  final UsersDao _usersDao;
  final ApiClient _apiClient;

  UsersRepositoryImpl(
    this._usersDao,
    this._apiClient,
  );

  @override
  Future<List<User>> getUsers() {
    return makeErrorParsedCall(() async {
      List<UserDto> users = await _usersDao.getAllUsers();
      if (users.isEmpty) {
        users = await _apiClient.getUsers();
        await _usersDao.insertUsers(users);
      }
      return users.map((userDto) => userDto.toUser()).toList();
    });
  }

  @override
  Future<User> getUserDetails(int userId) {
    return makeErrorParsedCall(() async {
      final userDto = await _usersDao.getUserById(userId);
      return userDto.toUser();
    });
  }
}

extension on UserDto {
  User toUser() {
    return User(
      id: id,
      name: name,
      username: username,
      email: email,
      address: '${address.street}, ${address.suite}, ${address.city}',
      phone: phone,
      website: website,
      company: company.name,
    );
  }
}
