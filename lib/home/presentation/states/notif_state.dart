import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final checkoutProvider = ChangeNotifierProvider((ref) => CheckoutNotifier());

class CheckoutNotifier extends ChangeNotifier {
  bool isName = true;
  bool isSurname = true;
  bool isYear = true;
  bool isMonth = true;
  bool isDay = true;

  final date = DateTime.now();

  void checkName(String name) {
    if(name.length > 2 && !isNumeric(name)) {
      isName = true;
    }
    else {
      isName = false;
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
    notifyListeners();
  }

  void checkYear(String year) {
    if(isNumeric(year)) {
      if(year.length == 4 && int.parse(year) <= date.year) {
        isYear = true;
      }
      else {
        isYear = false;
      }
    }
    else {
      isYear = false;
    }
    notifyListeners();
  }

  void checkMonth(String month) {
    if(isNumeric(month)) {
      if(int.parse(month) <= 12) {
        isMonth = true;
      }
      else {
        isMonth = false;
      }
    }
    else {
      isMonth = false;
    }
    notifyListeners();
  }

  void checkDay(String day) {
    if(isNumeric(day)) {
      if(int.parse(day) <= 31) {
        isDay = true;
      }
      else {
        isDay = false;
      }
    }
    else {
      isDay = false;
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

final checkoutProvider2 = ChangeNotifierProvider((ref) => CheckoutNotifier());

class CheckoutNotifier2 extends ChangeNotifier {
  bool isName = true;
  bool isSurname = true;
  bool isYear = true;
  bool isMonth = true;
  bool isDay = true;

  final date = DateTime.now();

  void checkName(String name) {
    if(name.length > 2 && !isNumeric(name)) {
      isName = true;
    }
    else {
      isName = false;
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
    notifyListeners();
  }

  void checkYear(String year) {
    if(isNumeric(year)) {
      if(year.length == 4 && int.parse(year) <= date.year) {
        isYear = true;
      }
      else {
        isYear = false;
      }
    }
    else {
      isYear = false;
    }
    notifyListeners();
  }

  void checkMonth(String month) {
    if(isNumeric(month)) {
      if(int.parse(month) <= 12) {
        isMonth = true;
      }
      else {
        isMonth = false;
      }
    }
    else {
      isMonth = false;
    }
    notifyListeners();
  }

  void checkDay(String day) {
    if(isNumeric(day)) {
      if(int.parse(day) <= 31) {
        isDay = true;
      }
      else {
        isDay = false;
      }
    }
    else {
      isDay = false;
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