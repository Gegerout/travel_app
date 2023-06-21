import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_app/auth/data/models/user_model.dart';
import 'package:travel_app/auth/data/repositories/data_repository.dart';

final profileProvider = ChangeNotifierProvider((ref) => ProfileNotifier());

class ProfileNotifier extends ChangeNotifier {
  bool isName = true;
  bool isSurname = true;
  bool isEmail = true;
  bool isValid = false;

  void updateUser(String name, String surname, String image, String gender, String email, String username, String token) async {
    final model = UserModel(username, email, name, surname, gender, image, token);
    await DataRepository().updateUser(model);
  }

  void checkName(String name) {
    if(name.length > 2 && !isNumeric(name)) {
      isName = true;
    }
    else {
      isName = false;
    }
    if(isName && isSurname && isEmail) {
      isValid = true;
    }
    else {
      isValid = false;
    }
    notifyListeners();
  }

  void checkSurname(String surname) {
    if(surname.length > 2 && !isNumeric(surname)) {
      isSurname = true;
    }
    else {
      isSurname = false;
    }
    if(isName && isSurname && isEmail) {
      isValid = true;
    }
    else {
      isValid = false;
    }
    notifyListeners();
  }

  void checkEmail(String email) {
    if(RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$").hasMatch(email)) {
      isEmail = true;
    }
    else {
      isEmail = false;
    }
    if(isName && isSurname && isEmail) {
      isValid = true;
    }
    else {
      isValid = false;
    }
    notifyListeners();
  }

  bool isNumeric(String s) {
    if(s.isEmpty) {
      return false;
    }
    return double.tryParse(s) != null;
  }
}