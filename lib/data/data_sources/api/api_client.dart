import 'package:injectable/injectable.dart';

import '../../core/api/base_api_client.dart';
import '../models/users/user_dto.dart';

@singleton
class ApiClient extends BaseApiClient {
  ApiClient(super.dio);

  Future<List<UserDto>> getUsers() async {
    return await getList<UserDto>(
      path: '/users',
      converter: UserDto.fromJson,
    );
  }
}
