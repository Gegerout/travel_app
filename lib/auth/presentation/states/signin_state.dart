import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_app/auth/data/repositories/data_repository.dart';

import '../../data/models/user_model.dart';

final signinProvider = ChangeNotifierProvider((ref) => SigninNotifier());

class SigninNotifier extends ChangeNotifier {
  bool isName = false;
  bool isPassword = false;
  bool isValid = false;

  Future<UserModel?> loginUser(String username, String password) async {
    final data = await DataRepository().loginUser(username, password);
    if(data != null) {
      return data.data;
    }
    return null;
  }

  void checkCreds(String name, String password) {
    if(name.length > 5) {
      isName = true;
    }
    else {
      isName = false;
    }
    if(password.length > 6) {
      isPassword = true;
    }
    else {
      isPassword = false;
    }
    if(isName && isPassword) {
      isValid = true;
    }
    else {
      isValid = false;
    }
    notifyListeners();
  }
}