import 'package:travel_app/auth/data/models/user_model.dart';

import '../usecases/user_usecase.dart';

abstract class Repository {
  Future<UserUseCase?> loginUser(String username, String password);
  Future<UserUseCase?> getUser();
  Future<void> updateUser(UserModel user);
}