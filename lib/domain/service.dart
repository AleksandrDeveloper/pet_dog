import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:testtest/domain/export.dart';

const userEndpoint = 'users';
const registrationEndpoint = 'auth';

@injectable
class Service extends Client {
  Future<String> fetchUser() async {
    final response =
        await dio.get('https://jsonplaceholder.typicode.com/${userEndpoint}');
    final list = JsonDecoder(response.data) as Map<String, dynamic>;
    return list.values.first;
  }

  Future<String> goRegistration({
    required String login,
    required String password,
  }) async {
    final response = await dio.get(
      'https://0.0.0.0:8080/api/user',
      // data: {"login": login, "password": password},
    );
    // final json = JsonDecoder(response.data) as Map<String, dynamic>;
    // if (response.statusCode == 200) {
    //   final token = json['token'];
    //   return token;
    // } else if (response.statusCode == 204) {
    //   final massage = json['massege'];
    //   return massage;
    // }
    return 'Сервер не временно не работает';
  }
}
