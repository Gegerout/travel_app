import 'package:travel_app/auth/data/data_sources/local_data.dart';
import 'package:travel_app/auth/data/data_sources/remote_data.dart';
import 'package:travel_app/auth/data/models/user_model.dart';
import 'package:travel_app/auth/domain/repositories/repository_impl.dart';
import 'package:travel_app/auth/domain/usecases/user_usecase.dart';

class DataRepository extends Repository {
  @override
  Future<UserUseCase?> loginUser(String username, String password) async {
    final data = await RemoteData().loginUser(username, password);
    if(data != null) {
      final usecase = UserUseCase(data);
      return usecase;
    }
    return null;
  }

  @override
  Future<UserUseCase?> getUser() async {
    final data = await LocalData().getUser();
    if(data != null) {
      final usecase = UserUseCase(data);
      return usecase;
    }
    return null;
  }

  @override
  Future<void> updateUser(UserModel user) async {
    await LocalData().updateUser(user);
  }
}