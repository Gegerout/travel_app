import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:travel_app/auth/data/models/user_model.dart';

class RemoteData {
  Future<UserModel?> loginUser(String username, String password) async {
    const String apiUrl = "https://dummyjson.com/auth/login";
    final Dio dio = Dio();
    var dir = await getTemporaryDirectory();
    final File file = File("${dir.path}/userData.json");
    final data = await dio.post(apiUrl, data: {
      "username": username,
      "password": password
    }, options: Options(
      validateStatus: (status) {
        return status! < 500;
      }
    ));
    if(data.statusCode == 200) {
      final model = UserModel.fromJson(data.data);
      file.writeAsStringSync(json.encode(data.data));
      return model;
    }
    return null;
  }
}