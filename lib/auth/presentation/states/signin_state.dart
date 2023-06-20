import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_app/auth/data/repositories/data_repository.dart';

import '../../data/models/user_model.dart';

final signinProvider = ChangeNotifierProvider((ref) => SigninNotifier());

class SigninNotifier extends ChangeNotifier {
  Future<UserModel?> loginUser(String username, String password) async {
    final data = await DataRepository().loginUser(username, password);
    if(data != null) {
      return data.data;
    }
    return null;
  }
}